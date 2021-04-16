#!/bin/bash

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-on-ubuntu-18-04-source

curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

apt-key list

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

sudo apt update

sudo apt install mongodb-org

sudo systemctl start mongod.service

sudo systemctl status mongod

sudo systemctl enable mongod

mongo --eval 'db.runCommand({ connectionStatus: 1 })'

sudo systemctl status mongod

sudo systemctl stop mongod

sudo systemctl start mongod

sudo systemctl restart mongod

sudo systemctl disable mongod

sudo systemctl enable mongod