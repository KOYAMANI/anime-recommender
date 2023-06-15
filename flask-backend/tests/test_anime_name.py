import unittest
import sys
import os
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from app import create_app, db
from app.models.anime_name import AnimeName

class AnimeNameModelTestCase(unittest.TestCase):
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

    def test_anime_name_fetch(self):
        fetched_anime = AnimeName.query.filter_by(mal_id=226).first()
        self.assertEqual(fetched_anime.name, "Elfen Lied")
        self.assertEqual(fetched_anime.name_en, "Elfen Lied")
        self.assertEqual(fetched_anime.name_jp, "エルフェンリート")

    def test_anime_data_non_existence(self):
        fetched_anime = AnimeName.query.filter_by(mal_id=99999999).first()
        self.assertIsNone(fetched_anime, "Non-existent Anime was fetched")