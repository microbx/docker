#!/usr/bin/env bash

docker run --name sinopia -d -p 4873:4873 keyvanfatehi/sinopia:latest

# Mount the config file to the exposed data volume
docker run \
    -v /path/to/config.yaml:/opt/sinopia/config.yaml \
    --name sinopia \
    -d \
    -p 4873:4873 \
    keyvanfatehi/sinopia:latest
