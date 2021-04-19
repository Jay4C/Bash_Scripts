#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-deploy-mattermost-on-ubuntu-18-04/

mysql -u root

sudo useradd -U -M -d /opt/mattermost mattermost

sudo curl -L https://releases.mattermost.com/5.1.0/mattermost-5.1.0-linux-amd64.tar.gz -o /tmp/mattermost.tar.gz

sudo tar zxf /tmp/mattermost.tar.gz -C /opt

sudo mkdir -p /opt/mattermost/data

sudo chown -R mattermost: /opt/mattermost

nano /opt/mattermost/config/config.json

cd /opt/mattermost

sudo -u mattermost bin/mattermost

nano /etc/systemd/system/mattermost.service

sudo systemctl daemon-reload

sudo systemctl start mattermost

sudo systemctl status mattermost

sudo systemctl enable mattermost

nano /etc/nginx/conf.d/example.com.conf

sudo systemctl reload nginx

sudo systemctl restart mattermost