import os

from flask import Flask, request
from flask_cors import CORS, cross_origin
from dotenv import load_dotenv

from cf_recommender import CFRecommender
from cb_recommender import CBRecommender
from mal_handler import MalHandler
from markupsafe import escape
import json

load_dotenv()

app = Flask(__name__)
cors = CORS(app, resources={r"/api/*": {"origins": "*"}})
app.config['CORS_HEADERS'] = 'Content-Type'
cb_recommender = CBRecommender()
mal_handler = MalHandler()

@app.route('/', methods=['GET'])
@cross_origin()
def hello():
    return json.loads('{"message": "Hello World!"}')
    
@app.route('/api/image', methods=['POST'])
@cross_origin()
def get_image():
    content_type = request.headers.get('Content-Type')
    if (content_type == 'application/json'):
        if request.method == 'POST':
            body = request.get_json()
            title = body['title']
            try:
                res = mal_handler.get_anime_image(title)
                return res
            except KeyError:
                return json.loads('{"message": "Anime not found!"}')
        else:
            return 'Method not supported!'
    else:
        return 'Content-Type not supported!'
    
@app.route('/api/anime', methods=['POST'])
@cross_origin()
def rec_with_image():
    content_type = request.headers.get('Content-Type')
    if (content_type == 'application/json'):
        if request.method == 'POST':
            body = request.get_json()
            title = body['title']
            try:
                rec = json.loads(cb_recommender.get_rec(title))
                anime_titles = rec['data']
                res = []
                for title in anime_titles:
                    image_url = mal_handler.get_anime_image(title)['medium']
                    rec_anime = {}
                    rec_anime['title'] = title
                    rec_anime['image_url'] = image_url if image_url else ''
                    res.append(rec_anime)
                print('{0}: {1}'.format(title, image_url))
                return res
            except KeyError:
                return json.loads('{"message": "Anime not found!"}')
        else:
            return 'Method not supported!'
    else:
        return 'Content-Type not supported!'
    
# @app.route('/api/anime/rec', methods=['POST'])
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

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)