#! /usr/bin/sh

docker build -t react-docker .
docker run --name react-docker -v ${PWD}:/app -v /app/node_modules -p 3000:3000 --rm react-docker
