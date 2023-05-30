import redis


class RedisHelper:
    _instance = None

    def __init__(
        self,
        redis_url,
    ):
        self.REDIS_URL = redis_url

    @classmethod
    def get_instance(
        cls,
        redis_url=None,
    ):
        if cls._instance is None:
            cls._instance = cls(
                redis_url,
            )
        return cls._instance

    def get_client(self):
        if not self.REDIS_URL:
            return {"message": "Invalid Redis URL"}
        redis_client = redis.Redis.from_url(self.REDIS_URL)
        return redis_client
