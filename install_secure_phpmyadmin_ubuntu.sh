#!/bin/bash

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-phpmyadmin-on-ubuntu-20-04

sudo apt update

sudo apt install phpmyadmin php-mbstring php-zip php-gd php-json php-curl

sudo mysql

mysql -u root -p

UNINSTALL COMPONENT "file://component_validate_password";

exit

sudo apt install phpmyadmin

INSTALL COMPONENT "file://component_validate_password";

sudo phpenmod mbstring

sudo systemctl restart apache2

sudo mysql

SELECT user,authentication_string,plugin,host FROM mysql.user;

ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'password';

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';

SELECT user,authentication_string,plugin,host FROM mysql.user;

sudo mysql

mysql -u root -p

CREATE USER 'sammy'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'password';

ALTER USER 'sammy'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';

GRANT ALL PRIVILEGES ON *.* TO 'sammy'@'localhost' WITH GRANT OPTION;

exit

sudo nano /etc/apache2/conf-available/phpmyadmin.conf

sudo systemctl restart apache2

sudo nano /usr/share/phpmyadmin/.htaccess

sudo htpasswd -c /etc/phpmyadmin/.htpasswd username

sudo htpasswd /etc/phpmyadmin/.htpasswd additionaluser

sudo systemctl restart apache2