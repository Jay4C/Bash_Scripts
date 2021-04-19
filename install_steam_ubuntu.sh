#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-steam-on-ubuntu-20-04/

wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb

sudo apt install ./steam.deb

sudo apt update

sudo apt upgrade

steam