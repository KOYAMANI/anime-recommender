from flask_sqlalchemy import SQLAlchemy

from app import db


class AnimeData(db.Model):
    __tablename__ = "anime_data"
    mal_id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255), nullable=False)
    score = db.Column(db.Float, nullable=True)
    genres = db.Column(db.String(255), nullable=True)
    episodes = db.Column(db.Integer, nullable=True)
    premiered = db.Column(db.String(255), nullable=True)
    studios = db.Column(db.String(255), nullable=True)
    members = db.Column(db.Integer, nullable=True)
    completed = db.Column(db.Integer, nullable=True)
    dropped_rate = db.Column(db.Float, nullable=True)

    def to_dict(self):
        return {
            "mal_id": self.mal_id,
            "name": self.name,
            "score": self.score,
            "genres": self.genres,
            "episodes": self.episodes,
            "premiered": self.premiered,
            "studios": self.studios,
            "members": self.members,
            "completed": self.completed,
            "dropped_rate": self.dropped_rate,
        }

    def __repr__(self):
        return f"<AnimeData MAL_ID={self.MAL_ID}, \
            name={self.name}, \
            score={self.score}, \
            genres={self.genres}, \
            episodes={self.episodes}, \
            premiered={self.premiered}, \
            studios={self.studios}, \
            members={self.members}, \
            completed={self.completed}, \
            dropped_rate={self.dropped_rate}>"
