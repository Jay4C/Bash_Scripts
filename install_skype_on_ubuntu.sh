#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-skype-on-ubuntu-18-04/

wget https://go.skype.com/skypeforlinux-64.deb

sudo apt install ./skypeforlinux-64.deb

skypeforlinux

cat /etc/apt/sources.list.d/skype-stable.list