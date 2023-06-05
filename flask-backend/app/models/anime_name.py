from flask_sqlalchemy import SQLAlchemy

from app import db


class AnimeName(db.Model):
    __tablename__ = "anime_names"
    mal_id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255), nullable=False)
    japanese_name = db.Column(db.String(255), nullable=True)
    english_name = db.Column(db.String(255), nullable=True)

    def to_dict(self):
        return {
            "mal_id": self.mal_id,
            "name": self.name,
            "japanese_name": self.japanese_name,
            "english_name": self.english_name,
        }

    def __repr__(self):
        return f"<AnimeName mal_id={self.mal_id}, \
            name={self.name}, \
            japanese_name={self.japanese_name}, \
            english_name={self.english_name}>"
