import pandas as pd
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
