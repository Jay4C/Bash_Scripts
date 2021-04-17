#!/bin/bash

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-from-the-default-apt-repositories-on-ubuntu-20-04

sudo apt update

sudo apt install mongodb

sudo systemctl status mongodb

mongo --eval 'db.runCommand({ connectionStatus: 1 })'

sudo systemctl status mongodb

sudo systemctl stop mongodb

sudo systemctl start mongodb

sudo systemctl restart mongodb

sudo systemctl disable mongodb

sudo systemctl enable mongodb

sudo ufw allow from trusted_server_ip/32 to any port 27017

sudo ufw status

sudo nano /etc/mongodb.conf

sudo systemctl restart mongodb