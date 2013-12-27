#! /bin/sh
ID=$(sudo docker run -d -p 6379:6379 gmatheu/redis)
echo $ID > /tmp/docker_redis.cid
echo "$ID"

