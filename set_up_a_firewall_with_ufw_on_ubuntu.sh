#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-setup-a-firewall-with-ufw-on-ubuntu-18-04/

sudo apt install ufw

sudo ufw status verbose

sudo ufw app list

sudo ufw app info 'Nginx Full'

sudo ufw allow ssh

sudo ufw allow 4422/tcp

sudo ufw enable

sudo ufw allow http

sudo ufw allow 80/tcp

sudo ufw allow 'Nginx HTTP'

sudo ufw allow https

sudo ufw allow 443/tcp

sudo ufw allow 'Nginx HTTPS'

sudo ufw allow 8080/tcp

sudo ufw allow 7100:7200/tcp

sudo ufw allow 7100:7200/udp

sudo ufw allow from 64.63.62.61

sudo ufw allow from 64.63.62.61 to any port 22

sudo ufw allow from 192.168.1.0/24 to any port 3306

sudo ufw allow in on eth2 to any port 3306

sudo ufw deny from 23.24.25.0/24

sudo ufw deny from 23.24.25.0/24 to any port 80

sudo ufw deny from 23.24.25.0/24 to any port 443

sudo ufw status numbered

sudo ufw delete 3

sudo ufw delete allow 8069

sudo ufw disable

sudo ufw enable

sudo ufw reset