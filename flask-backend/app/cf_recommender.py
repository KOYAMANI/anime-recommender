import pandas as pd
import numpy as np
from scipy.sparse import csr_matrix
from sklearn.neighbors import NearestNeighbors
from os.path import join, dirname, realpath
import json


class CFRecommender():
    def __init__(self):
        pass

    CSV_PATH = join(dirname(realpath(__file__)), './input')

    anime_data=pd.read_csv(join(CSV_PATH, 'anime_cleaned.csv'))
    rating_data=pd.read_csv(join(CSV_PATH, 'rating.csv'))

    anime_fulldata=pd.merge(anime_data,rating_data,on='anime_id',suffixes= ['', '_user'])
    anime_fulldata = anime_fulldata.rename(columns={'name': 'anime_title', 'rating_user': 'user_rating'})

    duplicate_anime=anime_fulldata.copy()
    duplicate_anime.drop_duplicates(subset ="anime_title", 
                        keep = 'first', inplace = True)

    #Replacing -1 with NaN in user_rating column
    anime_feature=anime_fulldata.copy()
    anime_feature["user_rating"].replace({-1: np.nan}, inplace=True)

    #dropping all the null values as it aids nothing
    anime_feature = anime_feature.dropna(axis = 0, how ='any') 

    counts = anime_feature['user_id'].value_counts()
    anime_feature = anime_feature[anime_feature['user_id'].isin(counts[counts >= 200].index)]

    anime_pivot=anime_feature.pivot_table(index='anime_title',columns='user_id',values='user_rating').fillna(0)

    #Creating a sparse matrix
    anime_matrix = csr_matrix(anime_pivot.values)

    #Fitting the model
    model_knn = NearestNeighbors(metric = 'cosine', algorithm = 'brute')
    model_knn.fit(anime_matrix)

    def get_rec(title, anime_pivot=anime_pivot, model_knn=model_knn):
        # capitalize the first letter of each word
        # title = title.title()
        query_index = anime_pivot.index.get_loc(title)
        distances, indices = model_knn.kneighbors(anime_pivot.iloc[query_index,:].values.reshape(1, -1), n_neighbors = 6)
        res = []
        for i in range(0, len(distances.flatten())):
            if i == 0:
                print('Recommendations for {0}:\n'.format(anime_pivot.index[indices.flatten()[i]]))
            else:
                print('{0}: {1}'.format(i, anime_pivot.index[indices.flatten()[i]]))
                res.append(anime_pivot.index[indices.flatten()[i]])
        # return res
        return '{"status":"SUCCESS", "data":' + json.dumps(res) + '}'

                
    