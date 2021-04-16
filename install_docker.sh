#!/bin/bash

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04

sudo apt update

sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

sudo apt update

apt-cache policy docker-ce

sudo apt install docker-ce

sudo systemctl status docker

sudo usermod -aG docker ${USER}

su - ${USER}

id -nG

# change the username
sudo usermod -aG docker username

docker

docker info

docker run hello-world

docker search ubuntu

docker pull ubuntu

docker images

docker run -it ubuntu

docker ps

docker ps -a

docker ps -l