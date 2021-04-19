#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-add-swap-space-on-ubuntu-20-04/

sudo fallocate -l 2G /swapfile

sudo dd if=/dev/zero of=/swapfile bs=1024 count=2097152

sudo chmod 600 /swapfile

sudo mkswap /swapfile

sudo swapon /swapfile

sudo nano /etc/fstab

sudo swapon --show

sudo free -h

cat /proc/sys/vm/swappiness

sudo sysctl vm.swappiness=10

sudo swapoff -v /swapfile

sudo rm /swapfile