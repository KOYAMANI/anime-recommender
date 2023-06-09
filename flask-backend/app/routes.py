import base64
import json
import os
import random
import string
from urllib.parse import urlencode

from dotenv import load_dotenv
from flask import Blueprint, request, jsonify, redirect, current_app
from flask_cors import CORS, cross_origin
from flask_jwt_extended import create_access_token
from werkzeug.security import generate_password_hash, check_password_hash

from app import db
from .api_handler import JikanAPIHandler
from .anime_data_handler import AnimeDataHandler
from .cb_recommender import CBRecommender
from .cf_recommender import CFRecommender
from .models.user import Users
from .models.users_history import UsersHistory

load_dotenv()

bp = Blueprint("routes", __name__)
cors = CORS(bp, resources={r"/api/*": {"origins": "*"}})

jikan_handler = JikanAPIHandler()


@bp.route("/api/health", methods=["GET"])
@cross_origin()
def hello():
    return jsonify({"message": "ok"}), 200


@bp.route("/api/v1/oauth/authorize", methods=["GET"])
@cross_origin()
def mal_oauth():
    mal_api_handler = current_app.config["MAL_API_HANDLER"]
    redis_helper = current_app.config["REDIS_HELPER"]

    def base64url_encode(data):
        return base64.urlsafe_b64encode(data).rstrip(b"=")

    code_verifier = base64url_encode(os.urandom(40)).decode("utf-8")
    state = "".join(
        random.choice(string.ascii_letters + string.digits) for _ in range(128)
    )

    redis_client = redis_helper.get_client()
    redis_client.set("code_verifier", json.dumps(code_verifier))
    redis_client.set("state", json.dumps(state))

    url = mal_api_handler.user_oauth_authorize(state, code_verifier)
    return redirect(url)


@bp.route("/api/v1/oauth/callback", methods=["GET"])
@cross_origin()
def mal_callback():
    mal_api_handler = current_app.config["MAL_API_HANDLER"]
    redis_helper = current_app.config["REDIS_HELPER"]

    redis_client = redis_helper.get_client()

    error = request.args.get("error")
    if error:
        print("An error occurred during authorization")
        return mal_api_handler.user_oauth_redirect(
            err="An error occurred during authorization"
        )

    # Get code and state from request and compare them with the one in cache
    code = request.args.get("code")
    code_verifier = json.loads(redis_client.get("code_verifier"))

    if not code:
        return mal_api_handler.user_oauth_redirect(err="No authorization code provided")

    state = request.args.get("state")
    original_state = json.loads(redis_client.get("state"))
    if state != original_state:
        print("Invalid state parameter")
        return mal_api_handler.user_oauth_redirect(err="Invalid state parameter")

    # Retrieve access token and user info
    access_token, error = mal_api_handler.get_access_token(code, code_verifier)
    if not access_token:
        print("Failed to retrieve access token")
        return mal_api_handler.user_oauth_redirect(
            err="Failed to retrieve access token"
        )

    user_info, error = mal_api_handler.get_user_info(access_token)
    if not user_info:
        print("Failed to retrieve user info")
        return mal_api_handler.user_oauth_redirect(err="Failed to retrieve user info")

    user_mal_name = user_info["name"]
    user_mal_id = user_info["id"]

    # Register user in the app database if not exists
    user = Users.query.filter_by(mal_id=user_mal_id).first()
    if not user:
        new_user = Users(
            name=user_mal_name,
            mal_id=user_mal_id,
        )
        db.session.add(new_user)
        db.session.commit()

    return mal_api_handler.user_oauth_redirect(
        token=access_token, user_name=user_mal_name, user_id=user_mal_id
    )


# TODO: Decide which recommender to use and activate either one
@bp.route("/api/v1/anime/recommend/", defaults={"user_mal_id": None}, methods=["POST"])
@bp.route("/api/v1/anime/recommend/<user_mal_id>", methods=["POST"])
@cross_origin()
def rec_with_image(user_mal_id):
    mal_api_handler = current_app.config["MAL_API_HANDLER"]
    if request.headers.get("Content-Type") != "application/json":
        return jsonify({"error": "Content-Type not supported!"}), 400
    if request.method != "POST":
        return jsonify({"error": "Method not supported!"}), 400

    title = request.get_json()["title"]
    try:
        cb_recommender = CBRecommender.get_instance()
        recommendation = json.loads(cb_recommender.get_rec(title))
        anime_ids = recommendation["id"]
        anime_names = []
        image_urls = []
        res = []
        for id in anime_ids:
            title = mal_api_handler.get_anime_title(id)
            image_url = mal_api_handler.get_anime_image(id)
            res.append(
                {
                    "id": id,
                    "title": title,
                    "image_url": image_url,
                }
            )
            anime_names.append(title)
            image_urls.append(image_url)
        if (
            len(anime_ids) != len(anime_names)
            or len(anime_ids) != len(image_urls)
            or len(anime_names) != len(image_urls)
        ):
            return (
                jsonify({"error": "Failed to retrieve anime id, name or image url "}),
                400,
            )
        if user_mal_id is not None and user_mal_id != "undefined":
            post_user_history(user_mal_id, anime_ids, anime_names, image_urls)
        return res, 200
    except (KeyError, ValueError) as e:
        return jsonify({"error": str(e)}), 400


@bp.route("/api/v1/search-suggestion", methods=["POST"])
@cross_origin()
def get_suggestions():
    if request.headers.get("Content-Type") != "application/json":
        return jsonify({"error": "Content-Type not supported!"}), 400
    if request.method != "POST":
        return jsonify({"error": "Method not supported!"}), 400

    title = request.get_json()["title"]
    try:
        anime_data_handler = AnimeDataHandler.get_instance()
        res = json.loads(anime_data_handler.search_anime_titles(title))
        return res, 200
    except (KeyError, ValueError) as e:
        return jsonify({"error": str(e)}), 400


@bp.route("/api/v1/users/history", methods=["POST"])
@cross_origin()
def post_user_history(user_mal_id, anime_ids, anime_names, anime_image_urls):
    user = Users.query.filter_by(mal_id=user_mal_id).first()
    if user:
        users_history = UsersHistory.query.filter_by(user_id=user.id).first()

        if users_history:
            users_history.anime_ids = anime_ids
            users_history.anime_names = anime_names
            users_history.anime_image_urls = anime_image_urls
        else:
            new_users_history = UsersHistory(
                user_id=user.id,
                anime_ids=anime_ids,
                anime_names=anime_names,
                anime_image_urls=anime_image_urls,
            )
            db.session.add(new_users_history)

        db.session.commit()
        return jsonify({"message": "ok"}), 200
    else:
        return (
            jsonify({"error": "Failed to register user history: User not found"}),
            400,
        )


@bp.route("/api/v1/users/history/<user_mal_id>", methods=["GET"])
@cross_origin()
def get_user_history(user_mal_id):
    user = Users.query.filter_by(mal_id=user_mal_id).first()
    if user:
        users_history = UsersHistory.query.filter_by(user_id=user.id).first()

        if users_history:
            anime_ids = users_history.anime_ids
            anime_names = users_history.anime_names
            anime_image_urls = users_history.anime_image_urls
            res = []

            for i in range(len(anime_names)):
                res.append(
                    {
                        "id": anime_ids[i],
                        "title": anime_names[i],
                        "image_url": anime_image_urls[i],
                    }
                )
            return res, 200
        else:
            return jsonify({"error": "User does not have search history"}), 400

    else:
        return (
            jsonify({"error": "Failed to register user history: User not found"}),
            400,
        )


def image_from_id(anime_ids):
    mal_api_handler = current_app.config["MAL_API_HANDLER"]
    try:
        res = [
            {
                "title": mal_api_handler.get_anime_title(id),
                "image_url": mal_api_handler.get_anime_image(id),
            }
            for id in anime_ids
        ]
        return res
    except KeyError:
        return jsonify({"error": "Anime not found!"})


# v1 api routes

# @bp.route('/api/anime/rec', methods=['POST'])
# @cross_origin()
# def rec_with_image():
#     content_type = request.headers.get('Content-Type')
#     if (content_type == 'application/json'):
#         if request.method == 'POST':
#             body = request.get_json()
#             title = body['title']
#             try:
# rec = json.loads(CFRecommender.get_rec(title))
# anime_titles = rec['data']
# res = []
# for title in anime_titles:
#     image_url = MalHandler.get_anime_image(title)['medium']
#     rec_anime = {}
#     rec_anime['title'] = title
#     rec_anime['image_url'] = image_url if image_url else ''
#     res.append(rec_anime)
# print('{0}: {1}'.format(title, image_url))
# return res
#             except KeyError:
#                 return json.loads('{"error": "Anime not found!"}')
#         else:
#             return 'Method not supported!'
#     else:
#         return 'Content-Type not supported!'

# @bp.route("/api/v2/anime", methods=["POST"])
# @cross_origin()
# def get_anime_v2():
#     if request.headers.get("Content-Type") != "application/json":
#         return "Content-Type not supported!", 400
#     if request.method != "POST":
#         return "Method not supported!", 400

#     title = request.get_json()["title"]
#     try:
#         res = jikan_handler.get_anime_info(title)
#         return res, 200
#     except KeyError:
#         return json.loads('{"error": "Anime not found!"}'), 400


# @bp.route("/api/v2/anime/name", methods=["GET"])
# @cross_origin()
# def get_anime_name_v2():
#     anime_data_handler = AnimeDataHandler.get_instance()
#     df = anime_data_handler.load_anime_name()
#     res = df.head(5)
#     return res.to_json(), 200


# @bp.route("/api/v2/anime/image/<id>", methods=["POST"])
# @cross_origin()
# def get_image_v2(id):
#     if request.method != "POST":
#         return "Method not supported!", 400
#     try:
#         res = jikan_handler.get_anime_picture(id)
#         return res, 200
#     except KeyError:
#         return json.loads('{"error": "Anime not found!"}'), 400
