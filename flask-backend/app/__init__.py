import os
import logging
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_jwt_extended import JWTManager
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

    debug = os.getenv("FLASK_DEBUG")
    env = "production" if debug == False else "development"

    try:
        if env not in config:
            raise ValueError(f"Invalid FLASK_DEBUG: {env}")

        db_uri_env = config[env]
        db_uri = os.getenv(db_uri_env)

        if not db_uri:
            raise ValueError(f"{db_uri_env} is not set")

    except ValueError as e:
        logger.error(e)
        raise

    app.config["SQLALCHEMY_DATABASE_URI"] = db_uri
    app.config["CORS_HEADERS"] = "Content-Type"
    app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
    app.config["JWT_SECRET_KEY"] = "super-secret"  # TODO: store the secret in env

    logger.info(f"Application starting on {env} environment")

    db.init_app(app)
    jwt = JWTManager(app)
    app.register_blueprint(bp)

    return app
