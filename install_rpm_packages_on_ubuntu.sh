#!/bin/bash

# follow these steps : https://linuxize.com/post/install-rpm-packages-on-ubuntu/

sudo add-apt-repository universe

sudo apt update 

sudo apt install alien

sudo alien package_name.rpm

sudo dpkg -i package_name.deb

sudo apt install ./package_name.deb

sudo alien -i package_name.rpm