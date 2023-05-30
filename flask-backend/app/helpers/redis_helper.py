import urllib.parse
import redis
from rediscluster import RedisCluster

class RedisHelper:
    _instance = None

    def __init__(self, debug, redis_url):
        self.DEBUG = debug
        self.REDIS_URL = redis_url
        self.redis_client = self.get_client()

    @classmethod
    def get_instance(cls, debug=None, redis_url=None):
        if cls._instance is None:
            cls._instance = cls(debug, redis_url)
        return cls._instance

    def parse_redis_url(self, url):
        result = urllib.parse.urlparse(url)
        return result.hostname, result.port

    def get_client(self):
        if not self.REDIS_URL:
            raise ValueError("Invalid Redis URL")
        host, port = self.parse_redis_url(self.REDIS_URL)
        if self.DEBUG == True:
            redis_client = redis.Redis(host=host, port=port)
        elif self.DEBUG == False:
            startup_nodes = [{"host": host, "port": port}]
            redis_client = RedisCluster(startup_nodes=startup_nodes, decode_responses=True, skip_full_coverage_check=True)
        else:
            raise ValueError("Invalid App environment")
        return redis_client
