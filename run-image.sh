#!/bin/bash

# Specify the docker hub image name and version
IMAGE_NAME=mkieboom/sonos-client-docker:latest
CONTAINER_NAME=sonos-client-docker

# Bring the current container down
docker-compose down

# Bring the new container up
docker-compose up -d --build

# Alert to delate old containers if neccessary
echo "Don't forget to remove older containers if existing:"
docker images -a|grep none
echo ""
echo "To remove unused docker images run:"
echo "docker image prune -af"

