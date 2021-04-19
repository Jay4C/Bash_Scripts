#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-joomla-with-apache-on-ubuntu-18-04/

sudo apt-get update

sudo apt-get install mysql-server

sudo mysql

CREATE DATABASE joomla CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

GRANT ALL ON joomla.* TO 'joomlauser'@'localhost' IDENTIFIED BY 'change-with-strong-password';

EXIT

sudo apt update

sudo apt install php7.2 php7.2-cli php7.2-mysql php7.2-json php7.2-opcache php7.2-mbstring php7.2-intl php7.2-xml php7.2-gd  php7.2-zip php7.2-curl php7.2-xmlrpc php7.2-xmlrpc

sudo sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.2/apache2/php.ini

sudo sed -i "s/upload_max_filesize = .*/upload_max_filesize = 256M/" /etc/php/7.2/apache2/php.ini

sudo sed -i "s/post_max_size = .*/post_max_size = 256M/" /etc/php/7.2/apache2/php.ini

sudo sed -i "s/output_buffering = .*/output_buffering = Off/" /etc/php/7.2/apache2/php.ini

sudo sed -i "s/max_execution_time = .*/max_execution_time = 300/" /etc/php/7.2/apache2/php.ini

sudo sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.2/apache2/php.ini

sudo systemctl restart apache2

sudo mkdir -p /var/www/example.com

cd /var/www/example.com

sudo wget https://downloads.joomla.org/cms/joomla3/3-9-4/Joomla_3-9-4-Stable-Full_Package.zip

sudo unzip Joomla_3-9-4-Stable-Full_Package.zip

sudo nano /etc/apache2/sites-available/example.com.conf

sudo a2ensite example.com

sudo systemctl restart apache2

sudo rm -rf /var/www/example.com/installation