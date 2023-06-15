import unittest
import json
from unittest.mock import patch, MagicMock
from app import create_app
from flask import current_app
from app.anime_data_handler import AnimeDataHandler
from app.cb_recommender import CBRecommender

class TestRoutes(unittest.TestCase):
    def setUp(self):
        self.app = create_app()
        self.app.testing = True
        self.context = self.app.app_context()
        self.context.push()
        self.client = self.app.test_client()

    def tearDown(self):
        self.context.pop()

    def test_health(self):
        response = self.client.get("/api/health")
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.get_json(), {"message": "ok"})

    @patch('app.anime_data_handler.AnimeDataHandler')
    @patch('app.cb_recommender.CBRecommender')
    def test_rec_with_image(self, mock_cb_recommender, mock_mal_api_handler):
        with open('tests/response_mock/getRecommendations.json') as f:
            example_response = json.load(f) 
        mock_cb_recommender.get_instance.return_value.get_rec.return_value = json.dumps({"id": ["1", "2", "3"]})
        # 'side_effect' is used to return different values for each call
        mock_mal_api_handler.get_anime_title.side_effect = ["Title1", "Title2", "Title3"]
        mock_mal_api_handler.get_anime_image.side_effect = ["Image1", "Image2", "Image3"]

        response = self.client.post("/api/v1/anime/recommend/", json={"title": "Naruto"})
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.get_json(), example_response)

    @patch('app.anime_data_handler.AnimeDataHandler')
    def test_get_suggestions(self, mock_anime_data_handler):
        with open('tests/response_mock/getSuggestions.json') as f:
            example_response = json.load(f)
        mock_anime_data_handler.get_instance.return_value.search_anime_titles.return_value = json.dumps(example_response)

        response = self.client.post("/api/v1/search-suggestion", json={"title": "Naruto"})
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.get_json(), example_response)

    def test_mal_oauth(self):
        response = self.client.get("/api/v1/oauth/authorize")
        self.assertEqual(response.status_code, 302)

    def test_mal_callback_without_code(self):
        response = self.client.get("/api/v1/oauth/callback")
        # redirect user to frontend if no code is provided
        self.assertEqual(response.status_code, 302)
