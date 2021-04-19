#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-upgrade-to-ubuntu-20-04/

sudo apt-mark showhold

sudo apt-mark unhold package_name

sudo apt update

sudo apt upgrade

sudo systemctl reboot

sudo apt full-upgrade

sudo apt --purge autoremove

sudo apt install update-manager-core

sudo do-release-upgrade -d

lsb_release -a