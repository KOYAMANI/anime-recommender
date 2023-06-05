from flask_sqlalchemy import SQLAlchemy
from app import db
from sqlalchemy.dialects.postgresql import UUID, ARRAY
import uuid


class User(db.Model):
    __tablename__ = 'users'

    id = db.Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    name = db.Column(db.String(255), nullable=False)
    mal_id = db.Column(db.Integer, nullable=False)

    def to_dict(self):
        return {
            "id": self.id,
            "name": self.name,
            "mal_id": self.mal_id,
        }

    def __repr__(self):
        return f"<User id={self.id}, name={self.name}, mal_id={self.mal_id}>"
