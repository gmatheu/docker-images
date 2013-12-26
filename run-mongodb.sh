#! /bin/sh
MONGO_ID=$(sudo docker run -d -p 27017:27017 gmatheu/mongodb)
echo $MONGO_ID > /tmp/docker_mongodb.cid
echo "$MONGO_ID"

