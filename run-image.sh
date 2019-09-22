#!/bin/bash

# Configure the container version tag:
CONTAINER_VERSION=latest

# Launch container
docker run -d \
  -p 11234:22 \
  mkieboom/sonos-client-docker:$CONTAINER_VERSION
