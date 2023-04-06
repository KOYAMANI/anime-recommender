import pandas as pd
import json
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from models.anime_data import AnimeData
from flask import current_app


class CBRecommender:
    def __init__(self, app):
        self.app = app
        self.ANIME_DATASET = self.load_anime_data()
        self.SIMILARITY = self.calc_similarity()

    def load_anime_data(self):
        with self.app.app_context():
            anime_data = AnimeData.query.all()
            anime_df = pd.DataFrame([anime.to_dict() for anime in anime_data])
            return anime_df

    def calc_similarity(self):
        vectorizer = CountVectorizer()
        genre_matrix = vectorizer.fit_transform(self.ANIME_DATASET["Genres"])
        genre_similarity = cosine_similarity(genre_matrix, genre_matrix)
        return genre_similarity

    def get_rec(self, anime_title, k=10):
        index = self.ANIME_DATASET[self.ANIME_DATASET["Name"] == anime_title].index[0]
        scores = list(enumerate(self.SIMILARITY[index]))
        # TODO: Sorting might be the reason that makes computation time longer
        scores = sorted(scores, key=lambda x: x[1], reverse=True)
        scores = scores[1 : k + 1]
        res = []
        for i in scores:
            res.append(self.ANIME_DATASET["Name"].iloc[i[0]])

        return '{"status":"SUCCESS", "data":' + json.dumps(res) + "}"
