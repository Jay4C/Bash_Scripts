#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-xrdp-on-ubuntu-20-04/

sudo apt update

sudo apt install ubuntu-desktop

sudo apt update

sudo apt install xubuntu-desktop

sudo apt install xrdp 

sudo systemctl status xrdp

sudo adduser xrdp ssl-cert  

sudo systemctl restart xrdp

sudo ufw allow from 192.168.33.0/24 to any port 3389

sudo ufw allow 3389