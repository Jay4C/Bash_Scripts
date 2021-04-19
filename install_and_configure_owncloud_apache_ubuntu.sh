#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-and-configure-owncloud-on-ubuntu-18-04/

sudo mysql

sudo apt install apache2 libapache2-mod-php7.2 openssl php-imagick php7.2-common php7.2-curl php7.2-gd php7.2-imap php7.2-intl php7.2-json php7.2-ldap php7.2-mbstring php7.2-mysql php7.2-pgsql php-smbclient php-ssh2 php7.2-sqlite3 php7.2-xml php7.2-zip

sudo ufw allow 'Apache Full'

wget https://download.owncloud.org/community/owncloud-10.3.2.zip -P /tmp

sudo unzip /tmp/owncloud-10.3.2.zip  -d /var/www

sudo nano /etc/apache2/conf-available/owncloud.conf

sudo a2enconf owncloud

sudo a2enmod rewrite

sudo a2enmod headers

sudo a2enmod env

sudo a2enmod dir

sudo a2enmod mime

sudo systemctl reload apache2