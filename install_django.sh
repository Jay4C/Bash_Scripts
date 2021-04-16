#!/bin/bash 

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-install-the-django-web-framework-on-ubuntu-20-04

sudo apt update

python3 -V

sudo apt install python3-django

django-admin --version

sudo apt update

python3 -V

sudo apt install python3-pip python3-venv

# change the project
mkdir ~/newproject
cd ~/newproject

# chnage the virtual environment
python3 -m venv my_env

source my_env/bin/activate

pip install django

django-admin --version

deactivate

# chnage the project
cd ~/newproject
source my_env/bin/activate

sudo apt update

python3 -V

sudo apt install python3-pip python3-venv

git clone git://github.com/django/django ~/django-dev

cd ~/django-dev

python3 -m venv my_env

source my_env/bin/activate

pip install -e ~/django-dev

django-admin --version

mkdir ~/django-test
cd ~/django-test

python3 -m venv my_env

source my_env/bin/activate

pip install django

django-admin startproject djangoproject .

python manage.py migrate

python manage.py createsuperuser

nano ~/django-test/djangoproject/settings.py

sudo ufw allow 8000

python manage.py runserver your_server_ip:8000