import pandas as pd
import json
import re
from .models.anime_data import AnimeData
from .models.anime_name import AnimeName


class AnimeDataHandler:
    _instance = None

    @classmethod
    def get_instance(cls):
        if cls._instance is None:
            cls._instance = cls()
        return cls._instance

    def __init__(self):
        pass

    def load_anime_data(self):
        anime_data = AnimeData.query.all()
        anime_df = pd.DataFrame([anime.to_dict() for anime in anime_data])
        return anime_df

    def load_anime_name(self):
        anime_name_data = AnimeName.query.all()
        anime_name_df = pd.DataFrame(
            [anime_name.to_dict() for anime_name in anime_name_data]
        )
        return anime_name_df

    def get_anime_id(self, title):
        ANIME_DATASET = self.load_anime_data()
        try:
            anime_id = ANIME_DATASET[ANIME_DATASET["name"] == title]["mal_id"].values[0]
            return anime_id
        except IndexError:
            return -1

    def search_anime_titles(self, query, limit=10):
        ANIME_DATASET = self.load_anime_data()
        try:
            query_regex = r"\b" + re.escape(query)
            matching_titles = ANIME_DATASET[
                ANIME_DATASET["name"].apply(
                    lambda title: re.search(query_regex, title, re.IGNORECASE)
                    is not None
                )
            ]["name"]
            res = matching_titles.head(limit).tolist()

            return '{"status":"SUCCESS", "data":' + json.dumps(res) + "}"
        except IndexError:
            raise ValueError("Anime not found!")
