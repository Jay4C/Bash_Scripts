#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-set-up-automatic-updates-on-ubuntu-18-04/

sudo apt install unattended-upgrades

systemctl status unattended-upgrades

sudo dpkg-reconfigure -plow unattended-upgrades

sudo unattended-upgrades --dry-run --debug