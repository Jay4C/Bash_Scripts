#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-gitea-on-ubuntu-18-04/

sudo apt update

sudo apt install sqlite3

sudo apt update

sudo apt install git

git --version

sudo adduser --system --group --disabled-password --shell /bin/bash --home /home/git --gecos 'Git Version Control' git

VERSION=1.10.2

sudo wget -O /tmp/gitea https://dl.gitea.io/gitea/${VERSION}/gitea-${VERSION}-linux-amd64

sudo mv /tmp/gitea /usr/local/bin

sudo chmod +x /usr/local/bin/gitea

sudo mkdir -p /var/lib/gitea/{custom,data,indexers,public,log}

sudo chown git: /var/lib/gitea/{data,indexers,log}

sudo chmod 750 /var/lib/gitea/{data,indexers,log}

sudo mkdir /etc/gitea

sudo chown root:git /etc/gitea

sudo chmod 770 /etc/gitea

sudo wget https://raw.githubusercontent.com/go-gitea/gitea/master/contrib/systemd/gitea.service -P /etc/systemd/system/

sudo systemctl daemon-reload

sudo systemctl enable --now gitea

sudo systemctl status gitea

sudo ufw allow 3000/tcp

sudo chmod 750 /etc/gitea

sudo chmod 640 /etc/gitea/app.ini

sudo nano /etc/nginx/sites-enabled/git.example.com

sudo systemctl restart nginx

sudo nano /etc/gitea/app.ini

sudo systemctl restart gitea

sudo nano /etc/gitea/app.ini

sudo systemctl restart gitea

sudo systemctl stop gitea

VERSION=<THE_LATEST_GITEA_VERSION>

wget -O /tmp/gitea https://dl.gitea.io/gitea/${VERSION}/gitea-${VERSION}-linux-amd64

sudo mv /tmp/gitea /usr/local/bin

sudo chmod +x /usr/local/bin/gitea

sudo systemctl restart gitea