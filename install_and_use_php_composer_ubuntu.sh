#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-and-use-composer-on-ubuntu-20-04/

sudo apt update

sudo apt install wget php-cli php-zip unzip

wget -O composer-setup.php https://getcomposer.org/installer

sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

sudo php composer-setup.php --install-dir=/path/to/project

sudo composer self-update  

mkdir ~/my-first-composer-project

cd ~/my-first-composer-project

composer require nesbot/carbon

ls -l

nano testing.php

php testing.php

composer update