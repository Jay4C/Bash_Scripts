#!/bin/bash

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04

sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

mkdir ~/compose-demo
cd ~/compose-demo

mkdir app

nano app/index.html

nano docker-compose.yml

docker-compose up -d

docker-compose ps

docker-compose logs

docker-compose pause

docker-compose unpause

docker-compose stop

docker-compose down

docker image rm nginx:alpine