#! /bin/bash

# foollow these steps : https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-18-04

sudo apt update

sudo apt install nginx

sudo ufw app list

sudo ufw allow 'Nginx Full'

sudo ufw status

systemctl status nginx

ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'

curl -4 icanhazip.com

sudo systemctl stop nginx

sudo systemctl start nginx

sudo systemctl restart nginx

sudo systemctl reload nginx

sudo systemctl disable nginx

sudo systemctl enable nginx

# Change the domain name
sudo mkdir -p /var/www/example.com/html

# change the domain name
sudo chown -R $USER:$USER /var/www/example.com/html

# change the domain name
sudo chmod -R 755 /var/www/example.com

# change the domain name
nano /var/www/example.com/html/index.html

sudo nano /etc/nginx/sites-available/example.com

sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/

sudo nano /etc/nginx/nginx.conf

sudo nginx -t

sudo systemctl restart nginx