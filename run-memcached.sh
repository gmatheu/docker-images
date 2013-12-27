#! /bin/sh
ID=$(sudo docker run -d -p 11211:11211 gmatheu/memcached)
echo $ID > /tmp/docker_memcached.cid
echo "$ID"

