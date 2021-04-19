#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-deploy-rocket-chat-on-ubuntu-18-04/

sudo apt update

sudo apt install nodejs npm build-essential curl software-properties-common graphicsmagick

sudo npm install -g inherits n

sudo n 8.11.3

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4

sudo add-apt-repository 'deb [arch=amd64] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse'

sudo apt update

sudo apt install mongodb-org

sudo systemctl start mongod

sudo systemctl enable mongod

sudo useradd -m -U -r -d /opt/rocket rocket

sudo usermod -a -G rocket www-data

sudo chmod 750 /opt/rocket

sudo su - rocket

curl -L https://releases.rocket.chat/latest/download -o rocket.chat.tgz

tar zxf rocket.chat.tgz

mv bundle Rocket.Chat

cd Rocket.Chat/programs/server

npm install

export PORT=3000

export ROOT_URL=http://0.0.0.0:3000/

export MONGO_URL=mongodb://localhost:27017/rocketchat

cd ../../

node main.js

sudo nano /etc/systemd/system/rocketchat.service

sudo systemctl daemon-reload

sudo systemctl start rocketchat

sudo systemctl status rocketchat

sudo systemctl enable rocketchat

sudo nano /etc/nginx/sites-available/chat.example.com.conf

sudo ln -s /etc/nginx/sites-available/chat.example.com.conf /etc/nginx/sites-enabled/

sudo systemctl reload nginx