#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-phpmyadmin-with-nginx-on-ubuntu-18-04/

sudo apt update

sudo apt install phpmyadmin

sudo mysql

sudo nano /etc/nginx/snippets/phpmyadmin.conf