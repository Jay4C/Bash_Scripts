#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-list-installed-packages-on-ubuntu/

sudo apt list --installed

sudo apt list --installed | less

sudo apt list --installed | grep screen

sudo dpkg-query -l | less

sudo dpkg-query -l | grep package_name

sudo dpkg-query -f '${binary:Package}\n' -W > packages_list.txt

sudo xargs -a packages_list.txt apt install

sudo dpkg-query -f '${binary:Package}\n' -W | wc -l