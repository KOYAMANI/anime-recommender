from flask_sqlalchemy import SQLAlchemy
from app import db
from sqlalchemy.dialects.postgresql import UUID, ARRAY
import uuid


class UsersHistory(db.Model):
    __tablename__ = "users_history"

    id = db.Column(db.Integer, primary_key=True, default=uuid.uuid4)
    user_id = db.Column(UUID(as_uuid=True), db.ForeignKey("users.id"), nullable=False)
    anime_ids = db.Column(ARRAY(db.Integer), nullable=True)
    anime_names = db.Column(ARRAY(db.String(255)), nullable=True)
    anime_image_urls = db.Column(ARRAY(db.String(255)), nullable=True)

    def to_dict(self):
        return {
            "id": self.id,
            "user_id": self.user_id,
            "anime_ids": self.anime_ids,
            "anime_names": self.anime_names,
            "anime_image_urls": self.anime_image_urls,
        }

    def __repr__(self):
        return f"<User id={self.id}, user_id={self.user_id}, anime_ids={self.anime_ids}, anime_names={self.anime_names}, anime_image_urls={self.anime_image_urls}>"
