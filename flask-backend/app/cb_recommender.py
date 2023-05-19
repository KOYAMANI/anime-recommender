import pandas as pd
import json
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from .dataset_handler import DatasetHandler


class CBRecommender:
    def __init__(self):
        self.dataset_handler = DatasetHandler()
        pass

    def calc_similarity(self):
        ANIME_DATASET = self.dataset_handler.load_anime_data()
        vectorizer = CountVectorizer()
        genre_matrix = vectorizer.fit_transform(ANIME_DATASET["Genres"])
        genre_similarity = cosine_similarity(genre_matrix, genre_matrix)
        return genre_similarity

    def get_rec(self, anime_title, k=10):
        ANIME_DATASET = self.dataset_handler.load_anime_data()
        SIMILARITY = self.calc_similarity()
        index = ANIME_DATASET[ANIME_DATASET["Name"] == anime_title].index[0]
        scores = list(enumerate(SIMILARITY[index]))
        # TODO: Sorting might be the reason that makes computation time longer
        scores = sorted(scores, key=lambda x: x[1], reverse=True)
        scores = scores[1 : k + 1]
        res = []
        for i in scores:
            res.append(ANIME_DATASET["Name"].iloc[i[0]])

        return '{"status":"SUCCESS", "data":' + json.dumps(res) + "}"
