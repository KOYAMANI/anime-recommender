import os

from dataset_handler import DatasetHandler
import requests
import json


class MalHandler:
    def __init__(self):
        self.API_URL = "https://api.myanimelist.net/v2/anime/"
        self.dataset_handler = DatasetHandler()

    def get_anime_image(self, title):
        anime_id = self.dataset_handler.get_anime_id(title)
        url = self.API_URL + str(anime_id)
        # TODO: Move client id to env variables
        headers = {"X-MAL-CLIENT-ID": "8056142dda9413a4411028bdbdb2541a"}
        res = requests.get(url, headers=headers).content
        res_json = json.loads(res)
        return res_json["main_picture"]
