#!/bin/bash

# follow these steps : https://djangocentral.com/deploy-django-with-nginx-gunicorn-postgresql-and-lets-encrypt-ssl-on-ubuntu/

sudo apt-get install postgresql postgresql-contrib libpq-dev python3-dev

sudo -u postgres psql

sudo apt install python3-venv

mkdir dir_name
 
cd dir_name

python3 -m venv venv_name
 
source venv_name/bin/activate

git clone git_url

pip install gunicorn psycopg2-binary

python manage.py check --deploy

python manage.py makemigrations
 
python manage.py migrate

sudo ufw allow 8000
 
python manage.py runserver 0.0.0.0:8000

gunicorn --bind 0.0.0.0:8000 project_name.wsgi

deactivate

mkdir /var/log/gunicorn

sudo nano /etc/systemd/system/gunicorn.service

sudo systemctl start gunicorn
 
sudo systemctl enable gunicorn

sudo systemctl status gunicorn

sudo journalctl -u gunicorn

sudo systemctl daemon-reload

sudo systemctl restart gunicorn

sudo apt-get install nginx

python manage.py collectstatic

sudo nano /etc/nginx/sites-available/project_name

sudo ln -s /etc/nginx/sites-available/project_name /etc/nginx/sites-enabled

sudo nginx -t

sudo systemctl restart nginx

sudo ufw delete allow 8000

sudo ufw allow 'Nginx Full'

sudo tail -F /var/log/nginx/error.log

sudo add-apt-repository ppa:certbot/certbot

sudo apt-get update

sudo apt-get install python-certbot-nginx

sudo systemctl reload nginx

sudo ufw allow ssh
 
sudo ufw enable 

sudo ufw allow 'Nginx Full'
 
sudo ufw delete allow 'Nginx HTTP'

sudo ufw status

sudo certbot --nginx -d example.com -d www.example.com

sudo certbot renew --dry-run