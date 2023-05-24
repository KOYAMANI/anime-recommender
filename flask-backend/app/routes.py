from flask import Blueprint, request, jsonify
from flask_cors import CORS, cross_origin
from dotenv import load_dotenv
from werkzeug.security import generate_password_hash, check_password_hash
from .cf_recommender import CFRecommender
from .cb_recommender import CBRecommender
from .api_handler import APIHandler
from .mal_handler import MalHandler
from .dataset_handler import DatasetHandler
from .models.user import User
from markupsafe import escape
from flask_jwt_extended import create_access_token
import json

from app import db

bp = Blueprint("routes", __name__)


load_dotenv()

cors = CORS(bp, resources={r"/api/*": {"origins": "*"}})

cb_recommender = CBRecommender()
mal_handler = MalHandler()
dataset_handler = DatasetHandler()
api_handler = APIHandler()


@bp.route("/", methods=["GET"])
@cross_origin()
def hello():
    return json.loads('{"message": "Hello World!"}')


@bp.route("/api/sign-up", methods=["POST"])
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


@bp.route("/api/log-in", methods=["POST"])
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


@bp.route("/api/image", methods=["POST"])
@cross_origin()
def get_image():
    content_type = request.headers.get("Content-Type")
    if content_type == "application/json":
        if request.method == "POST":
            body = request.get_json()
            title = body["title"]
            try:
                res = mal_handler.get_anime_image(title)
                return res, 200
            except KeyError:
                return json.loads('{"message": "Anime not found!"}'), 404
        else:
            return "Method not supported!", 400
    else:
        return "Content-Type not supported!", 400


# TODO: Decide which recommender to use and activate either one
@bp.route("/api/anime", methods=["POST"])
@cross_origin()
def rec_with_image():
    if request.headers.get("Content-Type") != "application/json":
        return "Content-Type not supported!", 400
    if request.method != "POST":
        return "Method not supported!", 400

    title = request.get_json()["title"]
    try:
        rec = json.loads(cb_recommender.get_rec(title))
        anime_titles = rec["data"]
        res = [
            {
                "title": title,
                "image_url": mal_handler.get_anime_image(title)["medium"],
            }
            for title in anime_titles
        ]
        print("{0}: {1}".format(title, res[-1]["image_url"]))
        return res, 200
    except KeyError:
        return json.loads('{"message": "Anime not found!"}'), 404


@bp.route("/api/suggestions", methods=["POST"])
@cross_origin()
def get_suggestions():
    if request.headers.get("Content-Type") != "application/json":
        return "Content-Type not supported!", 400
    if request.method != "POST":
        return "Method not supported!", 400

    title = request.get_json()["title"]
    try:
        res = json.loads(dataset_handler.search_anime_titles(title))
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
        res = api_handler.get_anime_info(title)
        return res, 200
    except KeyError:
        return json.loads('{"message": "Anime not found!"}'), 404


@bp.route("/api/v2/anime/name", methods=["GET"])
@cross_origin()
def get_anime_name_v2():
    df = dataset_handler.load_anime_name()
    res = df.head(5)
    return res.to_json(), 200


@bp.route("/api/v2/anime/image/<id>", methods=["POST"])
@cross_origin()
def get_image_v2(id):
    # if request.headers.get("Content-Type") != "application/json":
    #     return "Content-Type not supported!"
    if request.method != "POST":
        return "Method not supported!", 400
    try:
        res = api_handler.get_anime_picture(id)
        return res, 200
    except KeyError:
        return json.loads('{"message": "Anime not found!"}'), 404


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
