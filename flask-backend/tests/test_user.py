import unittest
import sys
import os
import uuid
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from app import create_app, db
from app.models.user import Users
from app.models.users_history import UsersHistory

class UsersAndHistoryTestCase(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        cls.test_user_id = str(uuid.uuid4())
        cls.test_history_id = str(uuid.uuid4())

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

    def test_user_data_creation(self):

        user = Users(
            id=self.test_user_id,
            name="test_user",
            mal_id=123456,
        )
        db.session.add(user)
        db.session.commit()

        fetched_user = Users.query.filter_by(id=self.test_user_id).first()
        self.assertEqual(fetched_user.name, "test_user")
        self.assertEqual(fetched_user.mal_id, 123456)

    def test_user_data_non_existence(self):
        fetched_user = Users.query.filter_by(mal_id=99999999).first()
        self.assertIsNone(fetched_user, "Non-existent User was fetched")

    def test_users_history_creation(self):
        users_history = UsersHistory(
            id=self.test_history_id,
            user_id=self.test_user_id,
            anime_ids=[1, 2, 3, 4, 5],
            anime_names=["anime1", "anime2", "anime3", "anime4", "anime5"],
            anime_image_urls=["url1", "url2", "url3", "url4", "url5"],
        )
        db.session.add(users_history)
        db.session.commit()

        fetched_users_history = UsersHistory.query.filter_by(id=self.test_history_id).first()
        self.assertEqual(str(fetched_users_history.user_id), self.test_user_id)
        self.assertEqual(fetched_users_history.anime_ids, [1, 2, 3, 4, 5])
        self.assertEqual(fetched_users_history.anime_names, ["anime1", "anime2", "anime3", "anime4", "anime5"])
        self.assertEqual(fetched_users_history.anime_image_urls, ["url1", "url2", "url3", "url4", "url5"])

    def test_user_history_non_existence(self):
        fetched_user_history = UsersHistory.query.filter_by(id=uuid.uuid4()).first()
        self.assertIsNone(fetched_user_history, "Non-existent UserHistory was fetched")