import pandas as pd
import json
import re
from os.path import join, dirname, realpath
from .models.anime_data import AnimeData
from .models.anime_name import AnimeName
from flask import current_app


class DatasetHandler:
    def __init__(self):
        pass

    def load_anime_data(self):
        with current_app.app_context():
            anime_data = AnimeData.query.all()
            test = AnimeName.query.filter((AnimeData.Name=='Naruto')).first()
            print(test)
            anime_df = pd.DataFrame([anime.to_dict() for anime in anime_data])
            print(anime_df.head(5))
            return anime_df

    def load_anime_name(self):
        with current_app.app_context():
            anime_name_data = AnimeName.query.all()
            anime_name_df = pd.DataFrame([anime_name.to_dict() for anime_name in anime_name_data])
            return anime_name_df

    def get_anime_id(self, title):
        ANIME_DATASET = self.load_anime_data()
        try:
            anime_id = ANIME_DATASET[ANIME_DATASET["Name"] == title]["MAL_ID"].values[0]
            print("anime_id", anime_id)
            return anime_id
        except IndexError:
            return -1

    def search_anime_titles(self, query, limit=10):
        ANIME_DATASET = self.load_anime_data()
        query_regex = r"\b" + re.escape(query)
        matching_titles = ANIME_DATASET[
            ANIME_DATASET["Name"].apply(
                lambda title: re.search(query_regex, title, re.IGNORECASE) is not None
            )
        ]["Name"]
        res = matching_titles.head(limit).tolist()

        return '{"status":"SUCCESS", "data":' + json.dumps(res) + "}"
