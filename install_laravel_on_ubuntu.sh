#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-laravel-on-ubuntu-18-04/

sudo apt update && sudo apt upgrade

sudo apt install php7.2-common php7.2-cli php7.2-gd php7.2-mysql php7.2-curl php7.2-intl php7.2-mbstring php7.2-bcmath php7.2-imap php7.2-xml php7.2-zip

curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

composer --version

composer create-project --prefer-dist laravel/laravel my_app

cd ~/my_app

php artisan serve