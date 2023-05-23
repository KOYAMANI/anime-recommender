from flask_sqlalchemy import SQLAlchemy
from app import db


class User(db.Model):
    __tablename__ = "user_account"
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255), nullable=False)
    email = db.Column(db.String(255), nullable=False)
    password = db.Column(db.String(255), nullable=False)

    def to_dict(self):
        return {
            "id": self.id,
            "name": self.name,
            "email": self.email,
        }

    def __repr__(self):
        return f"<User id={self.id}, name={self.name}, email={self.email}>"
