import pandas as pd
from os.path import join, dirname, realpath
import json
import collections
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics.pairwise import cosine_similarity


class CBRecommender():
    def __init__(self):
        self_DATASET_PATH = join(dirname(realpath(__file__)), './input')
        self.ANIME_DATASET = pd.read_csv(join(self_DATASET_PATH, 'anime_2020_cleaned.csv'))
        self.SIMILARITY = self.calc_similarity()


    def calc_similarity(self):
        vectorizer = CountVectorizer()
        genre_matrix = vectorizer.fit_transform(self.ANIME_DATASET['Genres'])
        genre_similarity = cosine_similarity(genre_matrix, genre_matrix)
        return genre_similarity

    def get_rec(self, anime_title, k=10):
        index = self.ANIME_DATASET[self.ANIME_DATASET['Name'] == anime_title].index[0]
        scores = list(enumerate(self.SIMILARITY[index]))
        scores = sorted(scores, key=lambda x: x[1], reverse=True) # It might make computation time longer
        scores = scores[1:k+1]
        res = []
        for i in scores:
            res.append(self.ANIME_DATASET['Name'].iloc[i[0]])

        return '{"status":"SUCCESS", "data":' + json.dumps(res) + '}'

                
    