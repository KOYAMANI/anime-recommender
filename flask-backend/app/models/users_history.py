from flask_sqlalchemy import SQLAlchemy
from app import db
from sqlalchemy.dialects.postgresql import UUID, ARRAY
import uuid


class UsersHistory(db.Model):
    __tablename__ = 'users_history'

    id = db.Column(db.Integer, primary_key=True, default=uuid.uuid4)
    user_id = db.Column(UUID(as_uuid=True), db.ForeignKey('users.id'), nullable=False)
    last_searched = db.Column(ARRAY(db.Integer), nullable=True)

    def to_dict(self):
        return {
            "id": self.id,
            "user_id": self.user_id,
            "last_searched": self.last_searched,
        }

    def __repr__(self):
        return f"<User id={self.id}, user_id={self.user_id}, last_searched={self.last_searched}>"
