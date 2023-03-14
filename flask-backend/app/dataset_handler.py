import pandas as pd
from os.path import join, dirname, realpath

class DatasetHandler():
    def __init__(self):
        pass

    CSV_PATH = join(dirname(realpath(__file__)), './input')

    anime_data=pd.read_csv(join(CSV_PATH, 'anime_cleaned.csv'))
    rating_data=pd.read_csv(join(CSV_PATH, 'rating.csv'))

    def get_anime_id(title, anime_data=anime_data):
        try:
            anime_id=anime_data[anime_data['name']==title]['anime_id'].values[0]
            return anime_id
        except IndexError:
            return -1