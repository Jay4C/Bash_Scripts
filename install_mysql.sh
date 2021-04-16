#! /bin/bash

# https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04

sudo apt update

sudo apt install mysql-server

sudo mysql_secure_installation

sudo mysql

# change the username
mysql -u username -p

systemctl status mysql.service

sudo mysqladmin -p -u username version