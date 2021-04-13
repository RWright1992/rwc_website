#!/bin/bash

sudo systemctl start docker
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -q)
docker build -t html-server-image:v1 .
docker run -d -p 80:80 html-server-image:v1