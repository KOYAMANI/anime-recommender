import os

from flask import Flask, request
from flask_cors import CORS, cross_origin

from cf_recommender import CFRecommender
from markupsafe import escape
import json

HOST = 'localhost'
PORT = 8080

app = Flask(__name__)
cors = CORS(app, resources={r"/api/*": {"origins": "*"}})
app.config['CORS_HEADERS'] = 'Content-Type'

@app.route('/', methods=['GET'])
@cross_origin()
def hello():
    return json.loads('{"message": "Hello World!"}')
    
@app.route('/api/anime', methods=['POST'])
@cross_origin()
def give_rec():
    content_type = request.headers.get('Content-Type')
    if (content_type == 'application/json'):
        if request.method == 'POST':
            body = request.get_json()
            title = body['title']
            try:
                res = CFRecommender.give_rec(title)
                res_json = json.loads(res)
                return res_json
            except KeyError:
                return json.loads('{"message": "Anime not found!"}')
        else:
            return 'Method not supported!'
    else:
        return 'Content-Type not supported!'
    

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)