#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-deb-packages-on-ubuntu/

wget --no-check-certificate https://download.teamviewer.com/download/linux/teamviewer_amd64.deb

curl -k -O -L https://download.teamviewer.com/download/linux/teamviewer_amd64.deb

sudo apt install ./teamviewer_amd64.deb

sudo apt install gdebi

sudo gdebi teamviewer_amd64.deb

sudo apt install ./teamviewer_amd64.deb

sudo apt install -f