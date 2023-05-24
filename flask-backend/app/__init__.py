import os
import logging
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
import json
from .database import db
from .routes import bp


def create_app():
    app = Flask(__name__)

    logging.basicConfig(level=logging.INFO)
    logger = logging.getLogger(__name__)

    config = {
        "production": "SQLALCHEMY_DATABASE_URI_PROD",
        "development": "SQLALCHEMY_DATABASE_URI_DEV",
    }

    env = os.getenv("FLASK_ENV")
    secrets_json = os.getenv("SECRETS_JSON")

    if env == "development":
        app.config["SQLALCHEMY_DATABASE_URI"] = secrets["SQLALCHEMY_DATABASE_URI_DEV"]
        pass
    elif env == "production":
        if not secrets_json:
            raise ValueError("SECRETS_JSON is not set")

        secrets = json.loads(secrets_json)
        app.config["SQLALCHEMY_DATABASE_URI"] = secrets["SQLALCHEMY_DATABASE_URI_PROD"]
        app.config["X_MAL_CLIENT_ID"] = secrets["X_MAL_CLIENT_ID"]
        app.config["MAL_API_URL"] = secrets["MAL_API_URL"]
    else:
        raise ValueError(f"Invalid FLASK_ENV: {env}")

    logger.info(f"Application starting on {env} environment")
    app.config["CORS_HEADERS"] = "Content-Type"
    app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
    
    db.init_app(app)
    app.register_blueprint(bp)

    return app
