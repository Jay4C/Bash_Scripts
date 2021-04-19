#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-apache-on-ubuntu-20-04/

sudo apt update

sudo apt install apache2

sudo systemctl status apache2

sudo ufw allow 'Apache Full'

sudo ufw status

sudo mkdir -p /var/www/example.com

sudo chown -R www-data: /var/www/example.com

sudo a2ensite example.com

sudo apachectl configtest

sudo systemctl restart apache2