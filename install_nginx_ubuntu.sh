#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-nginx-on-ubuntu-20-04/

sudo apt update

sudo apt install nginx

sudo systemctl status nginx

sudo ufw allow 'Nginx Full'

sudo ufw status