#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-and-configure-gogs-on-ubuntu-18-04/

sudo apt install sqlite3

sudo apt update

sudo apt install git

git --version

sudo adduser --system --group --disabled-password --shell /bin/bash --home /home/git --gecos 'Git Version Control' git

VERSION=0.11.86

wget https://dl.gogs.io/${VERSION}/gogs_${VERSION}_linux_amd64.tar.gz -P /tmp

sudo tar xf /tmp/gogs_*_linux_amd64.tar.gz -C /home/git

sudo chown -R git: /home/git/gogs

sudo cp /home/git/gogs/scripts/systemd/gogs.service /etc/systemd/system/

sudo systemctl start gogs

sudo systemctl enable gogs

sudo nano /etc/nginx/sites-enabled/gogs.example.com

sudo systemctl restart nginx

sudo nano /home/git/gogs/custom/conf/app.ini

sudo systemctl restart gogs

sudo nano /home/git/gogs/custom/conf/app.ini

sudo systemctl restart gogs

sudo systemctl stop gogs

sudo mv /home/git/gogs{,_old}

VERSION=<THE_LATEST_GOGS_VERSION>

wget https://dl.gogs.io/${VERSION}/gogs_${VERSION}_linux_amd64.tar.gz -P /tmp

sudo tar xf /tmp/gogs_*_linux_amd64.tar.gz -C /home/git

sudo rsync -a /home/git/gogs_old/{custom,data,log,gogs.db} /home/git/gogs/

sudo systemctl restart gogs