#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-and-configure-squid-proxy-on-ubuntu-18-04/

sudo apt update

sudo apt install squid

sudo systemctl status squid

sudo cp /etc/squid/squid.conf{,.orginal}

sudo nano /etc/squid/squid.conf

sudo systemctl restart squid

printf "USERNAME:$(openssl passwd -crypt PASSWORD)\n" | sudo tee -a /etc/squid/htpasswd

printf "josh:$(openssl passwd -crypt 'Sz$Zdg69')\n" | sudo tee -a /etc/squid/htpasswd

sudo systemctl restart squid

sudo ufw allow 'Squid'

sudo ufw status

/usr/bin/google-chrome \
    --user-data-dir="$HOME/proxy-profile" \
    --proxy-server="http://SQUID_IP:3128"