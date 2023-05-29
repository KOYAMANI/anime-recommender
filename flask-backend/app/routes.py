import base64
import json
import os
import random
import requests
import string
from urllib.parse import urlencode

from dotenv import load_dotenv
from flask import Blueprint, request, jsonify, redirect, url_for, session, current_app
from flask_cors import CORS, cross_origin
from flask_jwt_extended import create_access_token
from werkzeug.security import generate_password_hash, check_password_hash

from .api_handler import JikanAPIHandler
from .anime_data_handler import AnimeDataHandler
from .cb_recommender import CBRecommender
from .cf_recommender import CFRecommender
from .models.user import User
from app import db


bp = Blueprint("routes", __name__)

load_dotenv()

cors = CORS(bp, resources={r"/api/*": {"origins": "*"}})

jikan_handler = JikanAPIHandler()


@bp.route("/api/health", methods=["GET"])
@cross_origin()
def hello():
    return jsonify({"message": "ok"}), 200


@bp.route("/api/v1/oauth/authorize", methods=["GET"]) 
@cross_origin()
def mal_oauth():
    mal_api_handler = current_app.config['MAL_API_HANDLER']
    def base64url_encode(data):
        return base64.urlsafe_b64encode(data).rstrip(b'=')
    code_verifier = base64url_encode(os.urandom(40)).decode('utf-8')

    state = "".join(random.choice(string.ascii_letters + string.digits) for _ in range(128))
    
    session['code_verifier'] = code_verifier
    session['state'] = state

    url = mal_api_handler.user_oauth_authorize(state, code_verifier)
    return redirect(url)

@bp.route("/api/v1/oauth/callback", methods=["GET"])
@cross_origin()
def mal_callback():
    mal_api_handler = current_app.config['MAL_API_HANDLER']

    error = request.args.get("error")
    if error:
        print("An error occurred during authorization: ", error)
        return jsonify({"error": error}), 400
    
    code = request.args.get("code")
    code_verifier = session.get('code_verifier')
    callback_uri = url_for("routes.mal_callback", _external=True)

    state = request.args.get("state")
    original_state = session.get('state')
    if state != original_state:
        return jsonify({"error": "Invalid state parameter"}), 400
    
    access_token, error = mal_api_handler.get_access_token(code, code_verifier, callback_uri)
    if not access_token:
        return jsonify({"error": "Failed to retrieve access token", "details": error}), 400
    
    user_info, error = mal_api_handler.get_user_info(access_token)
    if not user_info:
        return jsonify({"error": "Failed to retrieve user info", "details": error}), 400

    user_name = user_info['name']
    user_id = user_info['id']

    return mal_api_handler.user_oauth_redirect(access_token, user_name, user_id)

@bp.route("/api/v1/anime/image", methods=["POST"])
@cross_origin()
def get_image():
    mal_api_handler = current_app.config['MAL_API_HANDLER']
    content_type = request.headers.get("Content-Type")
    if content_type == "application/json":
        if request.method == "POST":
            body = request.get_json()
            title = body["title"]
            try:       
                res = mal_api_handler.get_anime_image(title)
                return res, 200
            except KeyError:
                return json.loads('{"message": "Anime not found!"}'), 404
        else:
            return "Method not supported!", 400
    else:
        return "Content-Type not supported!", 400



# TODO: Decide which recommender to use and activate either one
@bp.route("/api/v1/anime/recommend", methods=["POST"])
@cross_origin()
def rec_with_image():
    mal_api_handler = current_app.config['MAL_API_HANDLER']
    if request.headers.get("Content-Type") != "application/json":
        return "Content-Type not supported!", 400
    if request.method != "POST":
        return "Method not supported!", 400

    title = request.get_json()["title"]
    try:
        cb_recommender = CBRecommender.get_instance()
        recommendation = json.loads(cb_recommender.get_rec(title))
        anime_ids = recommendation["id"]
        res = [
            {
                "title": mal_api_handler.get_anime_title(id),
                "image_url": mal_api_handler.get_anime_image(id)
            }
            for id in anime_ids
        ]
        print("{0}: {1}".format(title, res[-1]["image_url"]))
        return res, 200
    except KeyError:
        return json.loads('{"message": "Anime not found!"}'), 404


@bp.route("/api/v1/search-suggestion", methods=["POST"])
@cross_origin()
def get_suggestions():
    if request.headers.get("Content-Type") != "application/json":
        return "Content-Type not supported!", 400
    if request.method != "POST":
        return "Method not supported!", 400

    title = request.get_json()["title"]
    try:
        anime_data_handler = AnimeDataHandler.get_instance()
        res = json.loads(anime_data_handler.search_anime_titles(title))
        return res, 200
    except KeyError:
        return json.loads('{"message": "Anime not found!"}'), 404


@bp.route("/api/v2/anime", methods=["POST"])
@cross_origin()
def get_anime_v2():
    if request.headers.get("Content-Type") != "application/json":
        return "Content-Type not supported!", 400
    if request.method != "POST":
        return "Method not supported!", 400

    title = request.get_json()["title"]
    try:
        res = jikan_handler.get_anime_info(title)
        return res, 200
    except KeyError:
        return json.loads('{"message": "Anime not found!"}'), 404


@bp.route("/api/v2/anime/name", methods=["GET"])
@cross_origin()
def get_anime_name_v2():
    anime_data_handler = AnimeDataHandler.get_instance()
    df = anime_data_handler.load_anime_name()
    res = df.head(5)
    return res.to_json(), 200

@bp.route("/api/v2/anime/image/<id>", methods=["POST"])
@cross_origin()
def get_image_v2(id):
    if request.method != "POST":
        return "Method not supported!", 400
    try:
        res = jikan_handler.get_anime_picture(id)
        return res, 200
    except KeyError:
        return json.loads('{"message": "Anime not found!"}'), 404

# v1 api routes

@bp.route("/api/signup", methods=["POST"])
@cross_origin()
def sign_up():
    data = request.get_json()
    name = data.get("name")
    email = data.get("email")
    password = data.get("password")

    if not all([name, email, password]):
        return jsonify({"error": "Name, email and password are required"}), 400

    emailExist = User.query.filter((User.email == email)).first()
    if emailExist:
        return jsonify({"error": "This email address has already taken"}), 400

    nameExist = User.query.filter((User.name == name)).first()
    if nameExist:
        return jsonify({"error": "This username has already taken"}), 400

    hashed_password = generate_password_hash(password)
    new_user = User(name=name, email=email, password=hashed_password)
    db.session.add(new_user)
    db.session.commit()

    access_token = create_access_token(identity=new_user.id)
    return jsonify(access_token=access_token, username=name), 200


@bp.route("/api/login", methods=["POST"])
@cross_origin() 
def log_in():
    data = request.get_json()
    email = data.get("email")
    password = data.get("password")

    if not all([email, password]):
        return jsonify({"error": "Email and password are required"}), 400

    user = User.query.filter_by(email=data["email"]).first()
    if not user or not check_password_hash(user.password, data["password"]):
        return jsonify({"error": "Invalid email or password"}), 401

    access_token = create_access_token(identity=user.id)
    return jsonify(access_token=access_token, username=user.name), 200

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
#                 return json.loads('{"message": "Anime not found!"}')
#         else:
#             return 'Method not supported!'
#     else:
#         return 'Content-Type not supported!'
