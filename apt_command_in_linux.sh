#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-use-apt-command/

sudo apt update

sudo apt upgrade

sudo apt upgrade package_name

sudo apt full-upgrade

sudo apt install package_name

sudo apt install package1 package2

sudo apt install /full/path/file.deb

sudo apt remove package_name

sudo apt remove package1 package2

sudo apt purge package_name

sudo apt autoremove

sudo apt list

sudo apt list | grep package_name

sudo apt list --installed

sudo apt list --upgradeable

sudo apt search package_name

sudo apt show package_name

man apt