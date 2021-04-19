#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-drupal-on-ubuntu-18-04/

sudo apt update && sudo apt upgrade

sudo apt install mysql-server

mysql -u root -p

sudo apt install php7.2-cli php7.2-fpm php7.2-mysql php7.2-json php7.2-opcache php7.2-mbstring php7.2-xml php7.2-gd php7.2-curl

systemctl status php7.2-fpm

curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

composer --version

sudo composer create-project drupal-composer/drupal-project:8.x-dev /var/www/my_drupal --stability dev --no-interaction

cd /var/www/my_drupal

sudo vendor/bin/drush site-install --db-url=mysql://drupaluser:change-with-strong-password@localhost/drupal

sudo chown -R www-data: /var/www/my_drupal

sudo nano /etc/nginx/sites-available/example.com

sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/

sudo nginx -t

sudo systemctl restart nginx

cd /var/www/my_drupal

sudo -u www-data composer require drupal/pathauto

sudo rsync -a /var/www/my_drupal/  /var/www/my_drupal_$(date +%F)

mysqldump -u root -p > /var/www/my_drupal_database_$(date +%F).sql

cd /var/www/my_drupal

vendor/bin/drush sql-dump > /var/www/my_drupal_database_$(date +%F).sql

sudo -u www-data composer update drupal/core webflo/drupal-core-require-dev symfony/* --with-dependencies