#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-and-use-docker-on-ubuntu-20-04/

sudo apt update

sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt update

sudo apt install docker-ce docker-ce-cli containerd.io

sudo apt update

apt list -a docker-ce

sudo apt install docker-ce=<VERSION> docker-ce-cli=<VERSION> containerd.io

sudo systemctl status docker

sudo apt update && sudo apt upgrade

sudo apt-mark hold docker-ce

sudo usermod -aG docker $USER

docker container run hello-world