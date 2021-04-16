#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-tor-browser-on-ubuntu-18-04/#:~:text=%20How%20to%20Install%20Tor%20Browser%20on%20Ubuntu,secure%2C%20Tor%20Browser%20will%20automatically%20update...%20More%20

sudo add-apt-repository ppa:micahflee/ppa

sudo apt update

sudo apt install torbrowser-launcher

torbrowser-launcher