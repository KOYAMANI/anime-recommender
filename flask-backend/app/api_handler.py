import os
import requests
import json
from flask import current_app


class MalAPIHandler:
    _instance = None

    def __init__(self, mal_api_url, x_mal_client_id):
        self.MAL_API_URL = mal_api_url
        self.X_MAL_CLIENT_ID = x_mal_client_id
        # self.dataset_handler = DatasetHandler()

    @classmethod
    def get_instance(cls, mal_api_url=None, x_mal_client_id=None):
        if cls._instance is None:
            cls._instance = cls(mal_api_url, x_mal_client_id)
        return cls._instance

    def get_connection(self):
        url = self.MAL_API_URL
        headers = (
            {"X-MAL-CLIENT-ID": self.X_MAL_CLIENT_ID} if self.X_MAL_CLIENT_ID else None
        )
        if url and headers:
            try:
                res = requests.get(url, headers=headers)
                if res and res.status_code == 200:
                    return True
                else:
                    return False
            except:
                return json.loads('{"message": "Error calling MAL API!"}')
        else:
            return json.loads('{"message": "Error Invalid URL or Headers!"}')

    def get_anime_title(self, anime_id):
        url = self.MAL_API_URL + str(anime_id) if self.MAL_API_URL else None
        headers = (
            {"X-MAL-CLIENT-ID": self.X_MAL_CLIENT_ID} if self.X_MAL_CLIENT_ID else None
        )
        if url and headers:
            try:
                res = requests.get(url, headers=headers).content
                res_json = json.loads(res)
                return res_json["title"]
            except:
                return json.loads('{"message": "Error calling MAL API!"}')
        else:
            return json.loads('{"message": "Error Invalid URL or Headers!"}')

    def get_anime_image(self, anime_id, image_size="large"):
        url = self.MAL_API_URL + str(anime_id) if self.MAL_API_URL else None
        headers = (
            {"X-MAL-CLIENT-ID": self.X_MAL_CLIENT_ID} if self.X_MAL_CLIENT_ID else None
        )
        if url and headers:
            try:
                res = requests.get(url, headers=headers).content
                res_json = json.loads(res)
                return res_json["main_picture"][image_size]
            except:
                return json.loads('{"message": "Error calling MAL API!"}')
        else:
            return json.loads('{"message": "Error Invalid URL or Headers!"}')


class JikanAPIHandler:
    def __init__(self):
        # example api.jikan.moe/v4/anime?q=Jujutsu kaisen&sfw&type=TV&status=complete
        self.API_URL = "https://api.jikan.moe/v4/anime/"

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
