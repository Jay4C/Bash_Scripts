#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-configure-static-ip-address-on-ubuntu-20-04/

ip link

sudo nano /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg

sudo nano /etc/netplan/01-netcfg.yaml

sudo netplan apply

ip addr show dev ens3

ip addr