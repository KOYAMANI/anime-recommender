import os
import logging
import json

from flask import Flask
from flask_jwt_extended import JWTManager

from .api_handler import MalAPIHandler
from .helpers.database_helper import db
from .helpers.redis_helper import RedisHelper
from .routes import bp


def create_app():
    app = Flask(__name__)

    logging.basicConfig(level=logging.INFO)
    logger = logging.getLogger(__name__)

    debug = os.getenv("FLASK_DEBUG", "false").lower() in ["true", "1"]
    secrets = None
    if debug == False:
        secrets_json = os.getenv("SECRETS_JSON")
        if secrets_json:
            secrets = json.loads(secrets_json)
            print(secrets)
        else:
            raise ValueError("SECRETS_JSON is not set")

    app.config["SQLALCHEMY_DATABASE_URI"] = (
        secrets["SQLALCHEMY_DATABASE_URI_PROD"]
        if not debug and secrets
        else os.getenv("SQLALCHEMY_DATABASE_URI_DEV")
    )

    app.config["MAL_API_URL"] = (
        secrets["MAL_API_URL"] if not debug and secrets else os.getenv("MAL_API_URL")
    )
    app.config["MAL_API_CALLBACK_URL"] = (
        secrets["MAL_API_CALLBACK_URL_PROD"]
        if not debug and secrets
        else os.getenv("MAL_API_CALLBACK_URL")
    )
    app.config["MAL_OAUTH_URL"] = (
        secrets["MAL_OAUTH_URL"]
        if not debug and secrets
        else os.getenv("MAL_OAUTH_URL")
    )
    app.config["X_MAL_CLIENT_ID"] = (
        secrets["X_MAL_CLIENT_ID_PROD"]
        if not debug and secrets
        else os.getenv("X_MAL_CLIENT_ID")
    )
    app.config["X_MAL_CLIENT_SECRET"] = (
        secrets["X_MAL_CLIENT_SECRET_PROD"]
        if not debug and secrets
        else os.getenv("X_MAL_CLIENT_SECRET")
    )
    app.config["REACT_APP_URL"] = (
        secrets["REACT_APP_URL_PROD"]
        if not debug and secrets
        else os.getenv("REACT_APP_URL")
    )
    app.config["JWT_SECRET_KEY"] = (
        secrets["JWT_SECRET_KEY"]
        if not debug and secrets
        else os.getenv("JWT_SECRET_KEY")
    )

    app.config["CORS_HEADERS"] = "Content-Type"
    app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

    env = "Development" if debug else "Production"
    logger.info(f"Application starting on {env} environment")

    # Initialize MyAnimeList API Handler here to pass env variables from application context
    mal_api_handler = MalAPIHandler(
        app.config["REACT_APP_URL"],
        app.config["MAL_OAUTH_URL"],
        app.config["MAL_API_URL"],
        app.config["MAL_API_CALLBACK_URL"],
        app.config["X_MAL_CLIENT_ID"],
        app.config["X_MAL_CLIENT_SECRET"],
    )
    app.config["MAL_API_HANDLER"] = mal_api_handler

    app.secret_key = "MY_SECRET_KEY"

    app.config["REDIS_URL"] = (
        secrets["REDIS_URL_PROD"] if not debug and secrets else os.getenv("REDIS_URL")
    )
    redis_helper = RedisHelper(app.config["REDIS_URL"])
    app.config["REDIS_HELPER"] = redis_helper

    db.init_app(app)
    jwt = JWTManager(app)
    app.register_blueprint(bp)

    return app
