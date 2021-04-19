#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-prestashop-on-ubuntu/

sudo apt update && sudo apt upgrade

sudo apt install unzip

sudo apt install mysql-server mysql-client

sudo mysql

sudo apt install php7.2-common php7.2-cli php7.2-fpm php7.2-opcache php7.2-gd php7.2-mysql php7.2-curl php7.2-intl php7.2-xsl php7.2-mbstring php7.2-zip php7.2-bcmath php7.2-soap

sudo systemctl status php7.2-fpm

sudo sed -i "s/memory_limit = .*/memory_limit = 1024M/" /etc/php/7.2/fpm/php.ini

sudo sed -i "s/upload_max_filesize = .*/upload_max_filesize = 256M/" /etc/php/7.2/fpm/php.ini

sudo sed -i "s/zlib.output_compression = .*/zlib.output_compression = on/" /etc/php/7.2/fpm/php.ini

sudo sed -i "s/max_execution_time = .*/max_execution_time = 18000/" /etc/php/7.2/fpm/php.ini

sudo sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.2/fpm/php.ini

sudo sed -i "s/;opcache.save_comments.*/opcache.save_comments = 1/" /etc/php/7.2/fpm/php.ini

cd /tmp

wget https://download.prestashop.com/download/releases/prestashop_1.7.6.2.zip

sudo mkdir -p /var/www/html/example.com

unzip prestashop_*.zip

sudo unzip prestashop.zip -d /var/www/html/example.com

sudo nano /etc/nginx/sites-available/example.com

sudo ls -l /var/www/html/example.com | grep admin

sudo nginx -t

sudo systemctl restart nginx

sudo rm -rf /var/www/html/example.com/install