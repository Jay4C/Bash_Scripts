#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-memcached-on-ubuntu-20-04/

sudo apt update

sudo apt install memcached libmemcached-tools

sudo systemctl status memcached

sudo nano /etc/memcached.conf

sudo systemctl restart memcached

sudo ufw allow from 192.168.100.30 to any port 11211

sudo apt install php-memcached

pip install pymemcache

pip install python-memcached