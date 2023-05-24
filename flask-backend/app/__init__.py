import os
import logging
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_jwt_extended import JWTManager
import json
from .database import db
from .routes import bp


def create_app():
    app = Flask(__name__)

    logging.basicConfig(level=logging.INFO)
    logger = logging.getLogger(__name__)

    debug = os.getenv("FLASK_DEBUG", "false").lower() == "true"
    env = "production" if debug == False else "development"

    secrets_json = os.getenv("SECRETS_JSON")
    secrets = json.loads(secrets_json)

    if env == "development":
        app.config["SQLALCHEMY_DATABASE_URI"] = os.getenv("SQLALCHEMY_DATABASE_URI_DEV")
        pass
    elif env == "production":
        if not secrets_json:
            raise ValueError("SECRETS_JSON is not set")

        app.config["SQLALCHEMY_DATABASE_URI"] = secrets["SQLALCHEMY_DATABASE_URI_PROD"]
        app.config["X_MAL_CLIENT_ID"] = secrets["X_MAL_CLIENT_ID"]
        app.config["MAL_API_URL"] = secrets["MAL_API_URL"]
        print(secrets["SQLALCHEMY_DATABASE_URI_PROD"])
    else:
        raise ValueError(f"Invalid FLASK_ENV: {env}")

    logger.info(f"Application starting on {env} environment")

    app.config["CORS_HEADERS"] = "Content-Type"
    app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
    app.config["JWT_SECRET_KEY"] = "super-secret"  # TODO: store the secret in env

    db.init_app(app)
    jwt = JWTManager(app)
    app.register_blueprint(bp)

    return app
