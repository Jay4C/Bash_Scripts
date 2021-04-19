#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-ghost-on-ubuntu-18-04/

curl -sL https://deb.nodesource.com/setup_8.x | sudo bash -

sudo apt install nodejs

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update

sudo apt-get -o Dpkg::Options::="--force-overwrite" install yarn

sudo apt install mysql-server

sudo mysql_secure_installation

sudo mysql

sudo yarn global add ghost-cli

sudo mkdir -p /var/www/ghost

sudo chown $USER:$USER /var/www/ghost

sudo chmod 775 /var/www/ghost

cd /var/www/ghost

ghost install