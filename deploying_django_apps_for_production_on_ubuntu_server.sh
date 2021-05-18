#!/bin/bash

# follow these steps : https://medium.com/swlh/deploying-django-apps-for-production-on-ubuntu-server-18-04-using-gunicorn-supervisor-nginx-846c3c4099c0

sudo add-apt-repository ppa:jonathonf/python-3.6

sudo apt-get update

sudo apt-get install supervisor nginx

# user@ubuntu $ 
cd ~/path/to/django_project

# user@ubuntu /path/to/django_project $ 
source /path/to/envs/django_project/bin/activate

# (django_project) user@ubuntu /path/to/django_project $ 
pip install gunicorn

# (django_project) user@ubuntu /path/to/django_project $
gunicorn gunicorn --bind 0.0.0.0:8000 django_project.wsgi

# (django_project) user@ubuntu $
deactivate

# user@ubuntu $ 
nano /etc/supervisor/conf.d/gunicorn.conf

# user@ubuntu $
sudo supervisorctl reread

# user@ubuntu $
sudo supervisorctl update

# user@ubuntu $
sudo supervisorctl start django_project

# user@ubuntu $
sudo nano /etc/nginx/sites-available/django_project

# user@ubuntu $
sudo ln -s /etc/nginx/sites-available/django_project /etc/nginx/sites-enabled

# user@ubuntu $
sudo nginx -t

sudo systemctl restart nginx

sudo ufw delete allow 8000

sudo ufw allow 'Nginx Full'