#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-virtualbox-guest-additions-in-ubuntu/

sudo apt update

sudo apt install build-essential dkms linux-headers-$(uname -r)

sudo mkdir -p /mnt/cdrom

sudo mount /dev/cdrom /mnt/cdrom

cd /mnt/cdrom

sudo sh ./VBoxLinuxAdditions.run --nox11

sudo shutdown -r now

lsmod | grep vboxguest