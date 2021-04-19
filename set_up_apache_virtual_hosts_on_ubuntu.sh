#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-set-up-apache-virtual-hosts-on-ubuntu-18-04/

sudo mkdir -p /var/www/example.com/public_html

nano /var/www/example.com/public_html/index.html

sudo chown -R www-data: /var/www/example.com

nano /etc/apache2/sites-available/example.com.conf

sudo a2ensite example.com

sudo ln -s /etc/apache2/sites-available/example.com.conf /etc/apache2/sites-enabled/

sudo apachectl configtest

sudo systemctl restart apache2