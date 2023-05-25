import os

from .dataset_handler import DatasetHandler
import requests
import json
from flask import current_app


class MalHandler:
    _instance = None

    @classmethod
    def get_instance(cls):
        if cls._instance is None:
            cls._instance = cls()
        return cls._instance

    def __init__(self):
        self.dataset_handler = DatasetHandler()
        self.MAL_API_URL = os.getenv("MAL_API_URL")
        self.X_MAL_CLIENT_ID = os.getenv("X_MAL_CLIENT_ID")

    def get_connection(self):
        url = self.MAL_API_URL
        try:
            requests.get(url, headers={"X-MAL-CLIENT-ID": self.X_MAL_CLIENT_ID})
        except:
            return json.loads('{"message": "MyAnimeList API is not working!"}')

    def get_anime_image(self, title):
        anime_id = self.dataset_handler.get_anime_id(title)
        url = self.MAL_API_URL + str(anime_id)
        res = requests.get(
            url, headers={"X-MAL-CLIENT-ID": self.X_MAL_CLIENT_ID}
        ).content
        res_json = json.loads(res)
        return res_json["main_picture"]
