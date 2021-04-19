#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-webmin-on-ubuntu-20-04/

sudo apt update

sudo apt install software-properties-common apt-transport-https wget

wget -q http://www.webmin.com/jcameron-key.asc -O- | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] http://download.webmin.com/download/repository sarge contrib"

sudo apt install webmin

sudo ufw allow 10000/tcp