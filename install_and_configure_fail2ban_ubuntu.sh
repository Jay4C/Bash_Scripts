#!/bin/bash

# follow these steps : https://linuxize.com/post/install-configure-fail2ban-on-ubuntu-20-04/

sudo apt update

sudo apt install fail2ban

sudo systemctl status fail2ban

sudo cp /etc/fail2ban/jail.{conf,local}

sudo nano /etc/fail2ban/jail.local

sudo systemctl restart fail2ban

fail2ban-client -h

sudo fail2ban-client status sshd

sudo fail2ban-client set sshd unbanip 23.34.45.56