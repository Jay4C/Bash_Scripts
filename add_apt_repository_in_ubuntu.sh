#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-add-apt-repository-in-ubuntu/

sudo apt update

sudo apt install software-properties-common

add-apt-repository [options] repository

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4

sudo add-apt-repository 'deb [arch=amd64] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse'

sudo apt install mongodb-org

sudo add-apt-repository --remove 'deb [arch=amd64] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse'

sudo add-apt-repository ppa:jonathonf/ffmpeg-4

sudo apt install ffmpeg

sudo nano /etc/apt/sources.list

echo "deb https://apache.bintray.com/couchdb-deb $(lsb_release -cs) main" | sudo tee -a /etc/apt/sources.list

curl -L https://couchdb.apache.org/repo/bintray-pubkey.asc | sudo apt-key add -

sudo apt update

sudo apt install couchdb