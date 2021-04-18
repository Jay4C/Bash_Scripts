#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-odoo-14-on-ubuntu-20-04/

sudo apt update

sudo apt install git python3-pip build-essential wget python3-dev python3-venv \
    python3-wheel libfreetype6-dev libxml2-dev libzip-dev libldap2-dev libsasl2-dev \
    python3-setuptools node-less libjpeg-dev zlib1g-dev libpq-dev \
    libxslt1-dev libldap2-dev libtiff5-dev libjpeg8-dev libopenjp2-7-dev \
    liblcms2-dev libwebp-dev libharfbuzz-dev libfribidi-dev libxcb1-dev

sudo useradd -m -d /opt/odoo14 -U -r -s /bin/bash odoo14

sudo apt install postgresql

sudo su - postgres -c "createuser -s odoo14"

sudo wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.bionic_amd64.deb

sudo apt install ./wkhtmltox_0.12.6-1.bionic_amd64.deb

sudo su - odoo14

git clone https://www.github.com/odoo/odoo --depth 1 --branch 14.0 /opt/odoo14/odoo

cd /opt/odoo14

python3 -m venv odoo-venv

source odoo-venv/bin/activate

pip3 install wheel

pip3 install -r odoo/requirements.txt

deactivate

mkdir /opt/odoo14/odoo-custom-addons

exit

sudo nano /etc/odoo14.conf

sudo nano /etc/systemd/system/odoo14.service

sudo systemctl daemon-reload

sudo systemctl enable --now odoo14

sudo systemctl status odoo14

sudo journalctl -u odoo14

sudo nano /etc/nginx/sites-enabled/example.com.conf

sudo systemctl restart nginx

sudo systemctl restart odoo14

sudo systemctl restart odoo14

grep -c ^processor /proc/cpuinfo

sudo systemctl restart odoo14