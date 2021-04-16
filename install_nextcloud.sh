#!/bin/bash 

# follow these step : https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-nextcloud-on-ubuntu-20-04

sudo snap install nextcloud

snap changes nextcloud

snap info nextcloud

snap connections nextcloud

cat /snap/nextcloud/current/meta/snap.yaml

sudo nextcloud.manual-install sammy password

sudo nextcloud.occ config:system:get trusted_domains

# change the domain name
sudo nextcloud.occ config:system:set trusted_domains 1 --value=example.com

sudo nextcloud.occ config:system:get trusted_domains

sudo nextcloud.occ config:system:get trusted_domains

sudo ufw allow 80,443/tcp

sudo nextcloud.enable-https lets-encrypt

sudo nextcloud.enable-https self-signed

sudo ufw allow 80,443/tcp