#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-opencart-on-ubuntu-18-04/

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

sudo mkdir -p /var/www/html/example.com

cd /tmp

wget https://github.com/opencart/opencart/releases/download/3.0.3.1/opencart-3.0.3.1.zip

unzip opencart-*.zip

sudo mv /tmp/upload/* /var/www/html/example.com/

sudo cp /var/www/html/example.com/{config-dist.php,config.php}

sudo cp /var/www/html/example.com/admin/{config-dist.php,config.php}

sudo nano /etc/nginx/sites-available/example.com

sudo nginx -t

sudo systemctl restart nginx