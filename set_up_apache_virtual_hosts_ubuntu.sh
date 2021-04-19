#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-set-up-apache-virtual-hosts-on-ubuntu-20-04/

sudo mkdir -p /var/www/domain1.com/public_html

sudo chown -R www-data: /var/www/domain1.com

nano /etc/apache2/sites-available/domain1.com.conf

sudo a2ensite domain1.com

sudo ln -s /etc/apache2/sites-available/domain1.com.conf /etc/apache2/sites-enabled/

sudo apachectl configtest

sudo systemctl restart apache2