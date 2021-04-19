#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-magento-2-on-ubuntu-18-04/

sudo apt update && sudo apt upgrade

sudo apt install unzip

sudo apt install mysql-server mysql-client

sudo mysql

sudo useradd -m -U -r -d /opt/magento magento

sudo usermod -a -G magento www-data

sudo chmod 750 /opt/magento

sudo apt install php7.2-common php7.2-cli php7.2-fpm php7.2-opcache php7.2-gd php7.2-mysql php7.2-curl php7.2-intl php7.2-xsl php7.2-mbstring php7.2-zip php7.2-bcmath php7.2-soap

sudo systemctl status php7.2-fpm

sudo sed -i "s/memory_limit = .*/memory_limit = 1024M/" /etc/php/7.2/fpm/php.ini

sudo sed -i "s/upload_max_filesize = .*/upload_max_filesize = 256M/" /etc/php/7.2/fpm/php.ini

sudo sed -i "s/zlib.output_compression = .*/zlib.output_compression = on/" /etc/php/7.2/fpm/php.ini

sudo sed -i "s/max_execution_time = .*/max_execution_time = 18000/" /etc/php/7.2/fpm/php.ini

sudo sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.2/fpm/php.ini

sudo sed -i "s/;opcache.save_comments.*/opcache.save_comments = 1/" /etc/php/7.2/fpm/php.ini

sudo nano /etc/php/7.2/fpm/pool.d/magento.conf

systemctl restart php7.2-fpm

ls -al /var/run/php/php7.2-fpm-magento.sock

curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

composer --version

composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition /opt/magento/public_html

cd ~/public_html

php bin/magento setup:install --base-url=https://example.com/ \
        --base-url-secure=https://example.com/ \
        --admin-firstname="John" \
        --admin-lastname="Doe" \
        --admin-email="john@example.com" \
        --admin-user="john" \
        --admin-password="j0hnP4ssvv0rD" \
        --db-name="magento" \
        --db-host="localhost" \
        --db-user="magento" \
        --currency=USD \
        --timezone=America/Chicago \
        --use-rewrites=1 \
        --db-password="change-with-strong-password"

php ~/public_html/bin/magento cron:install

crontab -l

sudo nano /etc/nginx/sites-available/example.com

sudo nginx -t

sudo systemctl restart nginx