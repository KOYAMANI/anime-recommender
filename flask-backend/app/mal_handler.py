import os

from dataset_handler import DatasetHandler
import requests
import json


class MalHandler:
    def __init__(self):
        self.API_URL = "https://api.myanimelist.net/v2/anime/"
        self.dataset_handler = DatasetHandler()
        # TODO: Move client id to env variables
        self.headers = {"X-MAL-CLIENT-ID": "8056142dda9413a4411028bdbdb2541a"}
    
    #TODO show the error message if the MyAnimeList API is not working
    def get_connection(self):
        url = self.API_URL
        try:
            requests.get(url, headers=self.headers)
        except:
            return json.loads('{"message": "MyAnimeList API is not working!"}')

    def get_anime_image(self, title):
        anime_id = self.dataset_handler.get_anime_id(title)
        url = self.API_URL + str(anime_id)
        res = requests.get(url, headers=self.headers).content
        res_json = json.loads(res)
        return res_json["main_picture"]
