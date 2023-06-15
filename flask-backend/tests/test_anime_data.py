import unittest
import sys
import os
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from app import create_app, db
from app.models.anime_data import AnimeData

class AnimeDataModelTestCase(unittest.TestCase):
    def setUp(self):
        self.app = create_app()
        self.app.testing = True
        self.context = self.app.app_context()
        self.context.push()
        db.create_all()

    def tearDown(self):
        db.session.remove()
        # db.drop_all()
        self.context.pop()

    def test_anime_data_fetch(self):
        fetched_anime = AnimeData.query.filter_by(mal_id=5680).first()
        self.assertEqual(fetched_anime.name, "K-On!")
        self.assertEqual(fetched_anime.score, 7.84)
        self.assertEqual(fetched_anime.genres, "Music SliceofLife Comedy School")
        self.assertEqual(fetched_anime.premiered, "Spring 2009")
        self.assertEqual(fetched_anime.studios, "Kyoto Animation")

    def test_anime_data_non_existence(self):
        fetched_anime = AnimeData.query.filter_by(mal_id=99999999).first()
        self.assertIsNone(fetched_anime, "Non-existent Anime was fetched")

    def test_anime_score_range(self):
        fetched_anime = AnimeData.query.first()
        self.assertTrue(1 <= fetched_anime.score <= 10, "Anime score is out of range")

    def test_anime_data_count(self):
        count = AnimeData.query.count()
        self.assertGreater(count, 0, "No records in AnimeData")
