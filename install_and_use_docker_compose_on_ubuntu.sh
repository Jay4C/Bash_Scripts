#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-and-use-docker-compose-on-ubuntu-18-04/

sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

mkdir my_app

cd my_app

nano docker-compose.yml

docker-compose up

docker-compose up -d

docker-compose ps

docker-compose stop

docker-compose down

docker-compose down --volumes