#!/bin/bash

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-ubuntu-20-04

sudo apt update
sudo apt install nginx

sudo ufw app list

sudo ufw allow 'Nginx HTTP'

sudo ufw status

ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'

curl -4 icanhazip.com

sudo apt install mysql-server

sudo mysql_secure_installation

sudo mysql

exit

sudo apt install php-fpm php-mysql

sudo mkdir /var/www/your_domain

sudo chown -R $USER:$USER /var/www/your_domain

sudo nano /etc/nginx/sites-available/your_domain

sudo ln -s /etc/nginx/sites-available/your_domain /etc/nginx/sites-enabled/

sudo unlink /etc/nginx/sites-enabled/default

sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

sudo nginx -t

sudo systemctl reload nginx

nano /var/www/your_domain/index.html

nano /var/www/your_domain/info.php

sudo rm /var/www/your_domain/info.php

sudo mysql

CREATE DATABASE example_database;

CREATE USER 'example_user'@'%' IDENTIFIED WITH mysql_native_password BY 'password';

GRANT ALL ON example_database.* TO 'example_user'@'%';

exit

mysql -u example_user -p

SHOW DATABASES;

CREATE TABLE example_database.todo_list (
    item_id INT AUTO_INCREMENT,
    content VARCHAR(255),
    PRIMARY KEY(item_id)
);

INSERT INTO example_database.todo_list (content) VALUES ("My first important item");

SELECT * FROM example_database.todo_list;

exit

nano /var/www/your_domain/todo_list.php