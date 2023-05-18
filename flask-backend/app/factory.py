import os
import logging
from flask import Flask
from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()


def create_app():
    app = Flask(__name__)

    logging.basicConfig(level=logging.INFO)
    logger = logging.getLogger(__name__)

    config = {
        "production": "SQLALCHEMY_DATABASE_URI_PROD",
        "development": "SQLALCHEMY_DATABASE_URI_DEV",
    }

    env = os.getenv("FLASK_ENV")

    try:
        if env not in config:
            raise ValueError(f"Invalid FLASK_ENV: {env}")

        db_uri_env = config[env]
        db_uri = os.getenv(db_uri_env)

        if not db_uri:
            raise ValueError(f"{db_uri_env} is not set")

    except ValueError as e:
        logger.error(e)
        raise

    app.config["SQLALCHEMY_DATABASE_URI"] = db_uri
    logger.info(f"Application starting on {env} environment")

    app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
    db.init_app(app)
    return app
