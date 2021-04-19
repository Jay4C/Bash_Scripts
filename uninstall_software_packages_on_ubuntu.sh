#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-uninstall-software-packages-on-ubuntu/

sudo apt list --installed

sudo apt remove package_name

sudo apt-get remove package_name

sudo apt remove package1 package2

sudo apt purge package_name

snap list

sudo snap remove package_name

sudo apt autoremove