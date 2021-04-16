#!/bin/bash 

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-20-04

sudo apt install ufw

sudo nano /etc/default/ufw

sudo ufw default deny incoming

sudo ufw default allow outgoing

sudo ufw allow ssh

sudo ufw allow 22

sudo ufw allow 2222

sudo ufw enable

sudo ufw allow http

sudo ufw allow 80

sudo ufw allow https

sudo ufw allow 443

sudo ufw allow 6000:6007/tcp

sudo ufw allow 6000:6007/udp

# change the ip address
sudo ufw allow from 203.0.113.4

# change the ip address and the port
sudo ufw allow from 203.0.113.4 to any port 22

# chnage the ip address
sudo ufw allow from 203.0.113.0/24

sudo ufw allow from 203.0.113.0/24 to any port 22

ip addr

sudo ufw allow in on eth0 to any port 80

sudo ufw allow in on eth1 to any port 3306

sudo ufw deny http

# change the ip address
sudo ufw deny from 203.0.113.4

sudo ufw status numbered

sudo ufw delete 2

sudo ufw delete allow http

sudo ufw delete allow 80

sudo ufw status verbose

sudo ufw disable

sudo ufw reset