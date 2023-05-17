import os

import requests
import json
from flask import current_app


class APIHandler:
    def __init__(self, app):
        self.app = app
        # example api.jikan.moe/v4/anime?q=Jujutsu kaisen&sfw&type=TV&status=complete
        self.API_URL = "https://api.jikan.moe/v4/anime/"

    def get_connection(self):
        url = self.API_URL
        try:
            requests.get(url, headers=self.headers)
        except:
            return json.loads('{"message": "MyAnimeList API is not working!"}')

    def get_anime_info(self, title):
        header = {"q": title, "sfw": "True", "type": "TV", "status": "complete"}
        url = self.API_URL
        res = requests.get(url, header).content
        res_json = json.loads(res)
        return res_json

    def get_anime_picture(self, id):
        url = self.API_URL + id + "/pictures"
        res = requests.get(url).content
        res_json = json.loads(res)
        return res_json
