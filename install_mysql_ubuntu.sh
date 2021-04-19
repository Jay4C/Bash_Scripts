#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-mysql-on-ubuntu-20-04/

sudo apt update

sudo apt install mysql-server

sudo systemctl status mysql

sudo mysql_secure_installation

sudo mysql

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'very_strong_password';

FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON *.* TO 'administrator'@'localhost' IDENTIFIED BY 'very_strong_password';