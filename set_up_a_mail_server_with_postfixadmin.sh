#!/bin/bash

# follow these steps : https://linuxize.com/post/set-up-an-email-server-with-postfixadmin/

dig -x 23.45.67.89

sudo groupadd -g 5000 vmail

sudo useradd -u 5000 -g vmail -s /usr/sbin/nologin -d /var/mail/vmail -m vmail

sudo apt install nginx mysql-server php7.0-fpm php7.0-cli php7.0-imap php7.0-json php7.0-mysql php7.0-opcache php7.0-mbstring php7.0-readline

VERSION=3.1

wget -q https://downloads.sourceforge.net/project/postfixadmin/postfixadmin/postfixadmin-${VERSION}/postfixadmin-${VERSION}.tar.gz

tar xzf postfixadmin-${VERSION}.tar.gz

sudo mv postfixadmin-${VERSION}/ /var/www/postfixadmin

rm -f postfixadmin-${VERSION}.tar.gz

mkdir /var/www/postfixadmin/templates_c

sudo chown -R www-data: /var/www/postfixadmin

mysql -u root -p

sudo nano /var/www/postfixadmin/config.local.php

sudo -u www-data php /var/www/postfixadmin/upgrade.php

sudo bash /var/www/postfixadmin/scripts/postfixadmin-cli admin add superadmin@linuxize.com --superadmin 1 --active 1 --password P4ssvv0rD --password2 P4ssvv0rD

nano /etc/nginx/sites-enabled/mail.linuxize.com.conf

sudo systemctl reload nginx