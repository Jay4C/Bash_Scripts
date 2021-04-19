#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-kvm-on-ubuntu-20-04/

grep -Eoc '(vmx|svm)' /proc/cpuinfo

sudo apt update

sudo apt install cpu-checker

kvm-ok

sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager

sudo systemctl is-active libvirtd

sudo usermod -aG libvirt $USER

sudo usermod -aG kvm $USER

brctl show