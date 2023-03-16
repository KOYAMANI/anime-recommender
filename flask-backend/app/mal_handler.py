from dataset_handler import DatasetHandler
import requests
import json

class MalHandler():
    def __init__(self):
        pass

    def get_anime_image(title):
        anime_id=DatasetHandler.get_anime_id(title)
        url = 'https://api.myanimelist.net/v2/anime/' + str(anime_id)
        headers = {'X-MAL-CLIENT-ID': '8056142dda9413a4411028bdbdb2541a'}
        res = requests.get(url, headers=headers).content
        res_json = json.loads(res)
        return res_json['main_picture']

