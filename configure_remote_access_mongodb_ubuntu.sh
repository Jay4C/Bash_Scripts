#!/bin/bash

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-configure-remote-access-for-mongodb-on-ubuntu-18-04

sudo lsof -i | grep mongo

sudo ufw allow from trusted_server_ip to any port 27017

sudo ufw status

sudo nano /etc/mongod.conf

sudo systemctl restart mongod

ssh sammy@trusted_server_ip

nc -zv mongodb_server_ip 27017

mongo "mongodb://mongo_server_ip:27017"

mongo "mongodb://username@mongo_server_ip:27017"