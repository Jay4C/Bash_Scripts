#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-wordpress-with-nginx-on-ubuntu-18-04/

sudo apt update

sudo apt upgrade

mysql -u root -p

sudo apt install php7.2-cli php7.2-fpm php7.2-mysql php7.2-json php7.2-opcache php7.2-mbstring php7.2-xml php7.2-gd php7.2-curl

sudo mkdir -p /var/www/html/example.com

cd /tmp

wget https://wordpress.org/latest.tar.gz

tar xf latest.tar.gz

sudo mv /tmp/wordpress/* /var/www/html/example.com/

sudo nano /etc/nginx/sites-available/example.com

sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/

sudo nginx -t

sudo systemctl restart nginx