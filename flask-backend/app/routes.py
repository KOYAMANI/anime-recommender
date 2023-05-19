from flask import Blueprint, request, jsonify
from flask_cors import CORS, cross_origin
from dotenv import load_dotenv

from .cf_recommender import CFRecommender
from .cb_recommender import CBRecommender
from .api_handler import APIHandler
from .mal_handler import MalHandler
from .dataset_handler import DatasetHandler
from markupsafe import escape
import json


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
                return res
            except KeyError:
                return json.loads('{"message": "Anime not found!"}')
        else:
            return "Method not supported!"
    else:
        return "Content-Type not supported!"


# TODO: Decide which recommender to use and activate either one
@bp.route("/api/anime", methods=["POST"])
@cross_origin()
def rec_with_image():
    if request.headers.get("Content-Type") != "application/json":
        return "Content-Type not supported!"
    if request.method != "POST":
        return "Method not supported!"

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
        return res
    except KeyError:
        return json.loads('{"message": "Anime not found!"}')


@bp.route("/api/suggestions", methods=["POST"])
@cross_origin()
def get_suggestions():
    if request.headers.get("Content-Type") != "application/json":
        return "Content-Type not supported!"
    if request.method != "POST":
        return "Method not supported!"

    title = request.get_json()["title"]
    try:
        res = json.loads(dataset_handler.search_anime_titles(title))
        return res
    except KeyError:
        return json.loads('{"message": "Anime not found!"}')


@bp.route("/api/v2/anime", methods=["POST"])
@cross_origin()
def get_anime_v2():
    if request.headers.get("Content-Type") != "application/json":
        return "Content-Type not supported!"
    if request.method != "POST":
        return "Method not supported!"

    title = request.get_json()["title"]
    try:
        res = api_handler.get_anime_info(title)
        return res
    except KeyError:
        return json.loads('{"message": "Anime not found!"}')


@bp.route("/api/v2/anime/image/<id>", methods=["POST"])
@cross_origin()
def get_image_v2(id):
    # if request.headers.get("Content-Type") != "application/json":
    #     return "Content-Type not supported!"
    if request.method != "POST":
        return "Method not supported!"
    try:
        res = api_handler.get_anime_picture(id)
        return res
    except KeyError:
        return json.loads('{"message": "Anime not found!"}')


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
