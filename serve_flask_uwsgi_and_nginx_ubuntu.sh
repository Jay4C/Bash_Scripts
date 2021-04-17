#!/bin/bash

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-uwsgi-and-nginx-on-ubuntu-20-04

sudo apt update

sudo apt install python3-pip python3-dev build-essential libssl-dev libffi-dev python3-setuptools

sudo apt install python3-venv

mkdir ~/myproject

cd ~/myproject

python3.8 -m venv myprojectenv

source myprojectenv/bin/activate

pip install wheel

pip install uwsgi flask

nano ~/myproject/myproject.py

sudo ufw allow 5000

python myproject.py

nano ~/myproject/wsgi.py

uwsgi --socket 0.0.0.0:5000 --protocol=http -w wsgi:app

deactivate

nano ~/myproject/myproject.ini

sudo nano /etc/systemd/system/myproject.service

sudo systemctl start myproject

sudo systemctl enable myproject

sudo systemctl status myproject

sudo nano /etc/nginx/sites-available/myproject

sudo ln -s /etc/nginx/sites-available/myproject /etc/nginx/sites-enabled

sudo unlink /etc/nginx/sites-enabled/default

sudo nginx -t

sudo systemctl restart nginx

sudo ufw delete allow 5000
sudo ufw allow 'Nginx Full'

sudo apt install certbot python3-certbot-nginx

sudo certbot --nginx -d your_domain -d www.your_domain

sudo ufw delete allow 'Nginx HTTP'