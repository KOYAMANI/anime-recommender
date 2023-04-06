from flask_sqlalchemy import SQLAlchemy

from factory import db


class AnimeData(db.Model):
    # TODO: rename db column name to snake case instead of camel case with space
    MAL_ID = db.Column(db.Integer, primary_key=True)
    Name = db.Column(db.String(255), nullable=False)
    Score = db.Column(db.Float, nullable=True)
    Genres = db.Column(db.String(255), nullable=True)
    Episodes = db.Column(db.Integer, nullable=True)
    Premiered = db.Column(db.String(255), nullable=True)
    Studios = db.Column(db.String(255), nullable=True)
    Members = db.Column(db.Integer, nullable=True)
    Completed = db.Column(db.Integer, nullable=True)
    Dropped_rate = db.Column("Dropped rate", db.Float, nullable=True)

    def to_dict(self):
        return {
            "MAL_ID": self.MAL_ID,
            "Name": self.Name,
            "Score": self.Score,
            "Genres": self.Genres,
            "Episodes": self.Episodes,
            "Premiered": self.Premiered,
            "Studios": self.Studios,
            "Members": self.Members,
            "Completed": self.Completed,
            "Dropped_rate": self.Dropped_rate,
        }

    def __repr__(self):
        return f"<AnimeData MAL_ID={self.MAL_ID}, \
            Name={self.Name}, \
            Score={self.Score}, \
            Genres={self.Genres}, \
            Episodes={self.Episodes}, \
            Premiered={self.Premiered}, \
            Studios={self.Studios}, \
            Members={self.Members}, \
            Completed={self.Completed}, \
            Dropped_rate={self.Dropped_rate}>"
