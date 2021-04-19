#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-and-configure-redis-on-ubuntu-18-04/

sudo apt update

sudo apt install redis-server

sudo systemctl status redis-server

sudo nano /etc/redis/redis.conf

sudo systemctl restart redis-server

ss -an | grep 6379

sudo ufw allow proto tcp from 192.168.121.0/24 to any port 6379

redis-cli -h <REDIS_IP_ADDRESS> ping