#!/usr/bin/env bash

docker run \
    -v ./config.yaml:/opt/sinopia/config.yaml \
    --name sinopia \
    -d \
    -p 4873:4873 \
    keyvanfatehi/sinopia:latest
