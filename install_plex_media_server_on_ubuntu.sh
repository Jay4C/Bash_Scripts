#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-plex-media-server-on-ubuntu-18-04/

curl https://downloads.plex.tv/plex-keys/PlexSign.key | sudo apt-key add -

echo deb https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list

sudo apt install apt-transport-https

sudo apt update

sudo apt install plexmediaserver

sudo systemctl status plexmediaserver

nano /etc/ufw/applications.d/plexmediaserver

sudo ufw app update plexmediaserver

sudo ufw allow plexmediaserver-all

sudo ufw status verbose

sudo mkdir -p /opt/plexmedia/{movies,series}

sudo chown -R plex: /opt/plexmedia

sudo apt update

sudo apt upgrade