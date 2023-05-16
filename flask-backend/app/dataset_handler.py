import pandas as pd
import json
import re
from os.path import join, dirname, realpath


class DatasetHandler:
    def __init__(self):
        self_DATASET_PATH = join(dirname(realpath(__file__)), "./input")
        self.ANIME_DATASET = pd.read_csv(
            join(self_DATASET_PATH, "anime_2020_cleaned.csv")
        )

    def get_anime_id(self, title):
        try:
            anime_id = self.ANIME_DATASET[self.ANIME_DATASET["Name"] == title][
                "MAL_ID"
            ].values[0]
            return anime_id
        except IndexError:
            return -1

    def search_anime_titles(self, query, limit=10):
        query_regex = r"\b" + re.escape(query)
        matching_titles = self.ANIME_DATASET[
            self.ANIME_DATASET["Name"].apply(
                lambda title: re.search(query_regex, title, re.IGNORECASE) is not None
            )
        ]["Name"]
        res = matching_titles.head(limit).tolist()

        return '{"status":"SUCCESS", "data":' + json.dumps(res) + "}"
