#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-vmware-tools-in-ubuntu-18-04/

sudo apt update

sudo apt install open-vm-tools

sudo apt update

sudo apt install open-vm-tools-desktop

sudo apt update && sudo apt upgrade

sudo mkdir -p /mnt/cdrom

sudo mount /dev/cdrom /mnt/cdrom

cd /mnt/cdrom

sudo tar xf VMwareTools-*.tar.gz -C /tmp

sudo /tmp/vmware-tools-distrib/vmware-install.pl -d

sudo shutdown -r now