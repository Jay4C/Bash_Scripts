#!/bin/bash

# follow these steps : https://linuxize.com/post/secure-apache-with-let-s-encrypt-on-ubuntu-18-04/

sudo apt update

sudo apt install certbot

sudo openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048

sudo mkdir -p /var/lib/letsencrypt/.well-known

sudo chgrp www-data /var/lib/letsencrypt

sudo chmod g+s /var/lib/letsencrypt

nano /etc/apache2/conf-available/letsencrypt.conf

nano /etc/apache2/conf-available/ssl-params.conf

sudo a2enmod ssl

sudo a2enmod headers

sudo a2enconf letsencrypt

sudo a2enconf ssl-params

sudo a2enmod http2

sudo systemctl reload apache2

sudo certbot certonly --agree-tos --email admin@example.com --webroot -w /var/lib/letsencrypt/ -d example.com -d www.example.com

nano /etc/apache2/sites-available/example.com.conf

sudo systemctl reload apache2

nano /etc/cron.d/certbot

sudo certbot renew --dry-run