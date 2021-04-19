#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-google-chrome-web-browser-on-ubuntu-20-04/

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt install ./google-chrome-stable_current_amd64.deb

google-chrome

cat /etc/apt/sources.list.d/google-chrome.list