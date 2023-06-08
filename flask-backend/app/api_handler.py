import os
import requests
import json
from urllib.parse import urlencode
from flask import current_app, redirect, url_for, jsonify


class MalAPIHandler:
    _instance = None

    def __init__(
        self,
        react_app_url,
        mal_oauth_url,
        mal_api_url,
        mal_api_callback_url,
        x_mal_client_id,
        x_mal_client_secret,
    ):
        self.REACT_APP_URL = react_app_url
        self.MAL_OAUTH_URL = mal_oauth_url
        self.MAL_API_URL = mal_api_url
        self.MAL_API_CALLBACK_URL = mal_api_callback_url
        self.X_MAL_CLIENT_ID = x_mal_client_id
        self.X_MAL_CLIENT_SECRET = x_mal_client_secret

    @classmethod
    def get_instance(
        cls,
        react_app_url=None,
        mal_oauth_url=None,
        mal_api_url=None,
        mal_api_callback_url=None,
        x_mal_client_id=None,
        x_mal_client_secret=None,
    ):
        if cls._instance is None:
            cls._instance = cls(
                react_app_url,
                mal_oauth_url,
                mal_api_url,
                mal_api_callback_url,
                x_mal_client_id,
                x_mal_client_secret,
            )
        return cls._instance

    def get_connection(self):
        if not self.MAL_API_URL or not self.X_MAL_CLIENT_ID:
            return {"error": "Invalid URL or client ID"}
        url = self.MAL_API_URL + "anime/"
        headers = (
            {"X-MAL-CLIENT-ID": self.X_MAL_CLIENT_ID} if self.X_MAL_CLIENT_ID else None
        )
        if url and headers:
            try:
                res = requests.get(url, headers=headers)
                if res and res.status_code == 200:
                    return True
                else:
                    return False
            except:
                return jsonify({"error": "Error calling MAL API!"})
        else:
            return jsonify({"message": "Error Invalid URL or Headers!"})

    def user_oauth_authorize(self, state, code_verifier):
        if not self.MAL_OAUTH_URL:
            return {"error": "Invalid URL"}
        params = {
            "response_type": "code",
            "client_id": self.X_MAL_CLIENT_ID,
            "state": state,
            "redirect_uri": self.MAL_API_CALLBACK_URL + "api/v1/oauth/callback",
            "code_challenge": code_verifier,
            "code_challenge_method": "plain",
        }
        url = self.MAL_OAUTH_URL + "authorize?" + urlencode(params)
        return url

    def get_access_token(self, code, code_verifier):
        if not self.MAL_OAUTH_URL:
            return {"error": "Invalid URL"}
        data = {
            "client_id": self.X_MAL_CLIENT_ID,
            "client_secret": self.X_MAL_CLIENT_SECRET,
            "grant_type": "authorization_code",
            "code": code,
            "redirect_uri": self.MAL_API_CALLBACK_URL + "api/v1/oauth/callback",
            "code_verifier": code_verifier,
        }
        headers = {"Content-Type": "application/x-www-form-urlencoded"}
        response = requests.post(
            self.MAL_OAUTH_URL + "token", data=data, headers=headers
        )

        if response.status_code != 200:
            return None, response.json()

        access_token = response.json().get("access_token")
        return access_token, None

    def get_user_info(self, token):
        if not self.MAL_API_URL:
            return {"error": "Invalid URL"}

        url = self.MAL_API_URL + "users/@me"
        headers = {"Authorization": f"Bearer {token}"}
        response = requests.get(url, headers=headers)
        print(response.json())
        if response.status_code != 200:
            return None, response.json()

        return response.json(), None

    def user_oauth_redirect(self, token, user_name, user_id):
        if not self.REACT_APP_URL:
            return {"error": "Invalid URL"}
        return redirect(
            f"{self.REACT_APP_URL}callback?token={token}&userName={user_name}&userId={user_id}"
        )

    def get_anime_title(self, anime_id):
        if not self.MAL_API_URL or not self.X_MAL_CLIENT_ID:
            return {"error": "Invalid URL or client ID"}
        url = self.MAL_API_URL + "anime/" + str(anime_id)
        headers = {"X-MAL-CLIENT-ID": self.X_MAL_CLIENT_ID}
        if url and headers:
            try:
                res = requests.get(url, headers=headers).content
                res_json = json.loads(res)
                return res_json["title"]
            except:
                raise ValueError("Error calling MAL API!")
        else:
            raise ValueError("Error Invalid URL or Headers!")

    def get_anime_image(self, anime_id, image_size="large"):
        if not self.MAL_API_URL or not self.X_MAL_CLIENT_ID:
            return {"error": "Invalid URL or client ID"}
        url = self.MAL_API_URL + "anime/" + str(anime_id)
        headers = (
            {"X-MAL-CLIENT-ID": self.X_MAL_CLIENT_ID} if self.X_MAL_CLIENT_ID else None
        )
        if url and headers:
            try:
                res = requests.get(url, headers=headers).content
                res_json = json.loads(res)
                return res_json["main_picture"][image_size]
            except:
                raise ValueError("Error calling MAL API!")
        else:
            raise ValueError("Error Invalid URL or Headers!")


class JikanAPIHandler:
    def __init__(self):
        # example api.jikan.moe/v4/anime?q=Jujutsu kaisen&sfw&type=TV&status=complete
        self.API_URL = "https://api.jikan.moe/v4/anime/"

    def get_anime_info(self, title):
        header = {"q": title, "sfw": "True", "type": "TV", "status": "complete"}
        url = self.API_URL
        res = requests.get(url, header).content
        res_json = json.loads(res)
        return res_json

    def get_anime_picture(self, id):
        url = self.API_URL + id + "/pictures"
        res = requests.get(url).content
        res_json = json.loads(res)
        return res_json
