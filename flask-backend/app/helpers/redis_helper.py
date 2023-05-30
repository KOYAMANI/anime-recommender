import urllib.parse
import redis
from rediscluster import RedisCluster


class RedisHelper:
    _instance = None

    def __init__(
        self,
        debug,
        redis_url,
    ):
        self.DEBUG = debug
        self.REDIS_URL = redis_url
        

    @classmethod
    def get_instance(
        cls,
        debug=None,
        redis_url=None,
    ):
        if cls._instance is None:
            cls._instance = cls(
                debug,
                redis_url,
            )
        return cls._instance
    
    def get_client(self):
        if not self.REDIS_URL:
            return {"message": "Invalid Redis URL"}
        if not self.DEBUG:
            return {"message": "Invalid App Mode"}
        
        parsed_url = urllib.parse.urlparse(self.REDIS_URL)
        host, port = parsed_url.hostname, parsed_url.port

        print(f"DEBUG: {self.DEBUG}, HOST: {host}, PORT: {port}")

        if self.DEBUG == True:
            redis_client = redis.Redis.from_url(self.REDIS_URL)
            return redis_client
        elif self.DEBUG == False and host and port:
            startup_nodes = [{"host": host, "port": port}]
            redis_client = RedisCluster(startup_nodes=startup_nodes, decode_responses=True)
            return redis_client
        else:
            return {"message": "Invalid Redis URL"}