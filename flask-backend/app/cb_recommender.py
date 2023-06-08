import pandas as pd
import numpy as np
import json
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from .anime_data_handler import AnimeDataHandler


class CBRecommender:
    _instance = None

    @classmethod
    def get_instance(cls):
        if cls._instance is None:
            cls._instance = cls()
        return cls._instance

    def __init__(self):
        self.anime_data_handler = AnimeDataHandler()
        self.ANIME_DATASET = self.anime_data_handler.load_anime_data()
        self.SIMILARITY = self.calc_similarity()

    def calc_similarity(self):
        vectorizer = CountVectorizer()
        genre_matrix = vectorizer.fit_transform(self.ANIME_DATASET["genres"])
        genre_similarity = cosine_similarity(genre_matrix, genre_matrix)
        return genre_similarity

    def get_rec(self, anime_title, k=10):
        try:
            index = self.ANIME_DATASET[self.ANIME_DATASET["name"] == anime_title].index[
                0
            ]
            scores = self.SIMILARITY[index]

            top_k_plus_one_indices = np.argpartition(scores, -(k + 1))[-(k + 1) :]
            top_k_plus_one_indices_sorted = top_k_plus_one_indices[
                np.argsort(scores[top_k_plus_one_indices])
            ][::-1]
            top_k_indices_sorted = top_k_plus_one_indices_sorted[1:]

            ids = self.ANIME_DATASET["mal_id"].iloc[top_k_indices_sorted].tolist()

            return '{"status":"SUCCESS", "id":' + json.dumps(ids) + "}"
        except IndexError:
            raise ValueError("Anime not found!")
