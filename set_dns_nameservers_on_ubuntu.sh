#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-set-dns-nameservers-on-ubuntu-18-04/

sudo nano /etc/netplan/01-netcfg.yaml

sudo netplan apply

systemd-resolve --status | grep 'DNS Servers' -A2