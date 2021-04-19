#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-create-a-bootable-ubuntu-18-04-usb-stick-on-linux/

lsblk

sudo umount /dev/sdx1

sudo dd bs=4M if=/path/to/ubuntu-18.04.2-desktop-amd64.iso of=/dev/sdx status=progress oflag=sync