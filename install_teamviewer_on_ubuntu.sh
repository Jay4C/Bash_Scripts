#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-teamviewer-on-ubuntu-20-04/

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb

sudo apt install ./teamviewer_amd64.deb

teamviewer

cat /etc/apt/sources.list.d/teamviewer.list