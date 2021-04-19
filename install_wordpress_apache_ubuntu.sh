#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-wordpress-with-apache-on-ubuntu-18-04/

sudo apt update

sudo apt upgrade

sudo mysql

sudo apt install php7.2 php7.2-cli php7.2-mysql php7.2-json php7.2-opcache php7.2-mbstring php7.2-xml php7.2-gd php7.2-curl

sudo systemctl restart apache2

sudo mkdir -p /var/www/example.com

cd /tmp

wget https://wordpress.org/latest.tar.gz

tar xf latest.tar.gz

sudo mv /tmp/wordpress/* /var/www/example.com/

sudo nano /etc/apache2/sites-available/example.com.conf

sudo a2ensite example.com

sudo systemctl restart apache2