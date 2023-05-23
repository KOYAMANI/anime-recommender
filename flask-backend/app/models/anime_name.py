from flask_sqlalchemy import SQLAlchemy

from app import db


class AnimeName(db.Model):
    __tablename__ = "anime_names"
    # TODO: rename db column name to snake case instead of camel case with space
    MAL_ID = db.Column(db.Integer, primary_key=True)
    Name = db.Column(db.String(255), nullable=False)
    Japanese_name = db.Column("Japanese name", db.String(255), nullable=True)
    English_name = db.Column("English name", db.String(255), nullable=True)

    def to_dict(self):
        return {
            "MAL_ID": self.MAL_ID,
            "Name": self.Name,
            "Japanese_name": self.Japanese_name,
            "English_name": self.English_name,
        }

    def __repr__(self):
        return f"<AnimeName MAL_ID={self.MAL_ID}, \
            Name={self.Name}, \
            Japanese_name={self.Japanese_name}, \
            English_name={self.English_name}>"
