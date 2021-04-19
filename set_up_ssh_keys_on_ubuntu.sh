#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-set-up-ssh-keys-on-ubuntu-1804/

ls -l ~/.ssh/id_*.pub

ssh-keygen -t rsa -b 4096 -C "your_email@domain.com"

ls ~/.ssh/id_*

ssh-copy-id remote_username@server_ip_address

cat ~/.ssh/id_rsa.pub | ssh remote_username@server_ip_address "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"

ssh remote_username@server_ip_address

ssh sudo_user@server_ip_address

sudo nano /etc/ssh/sshd_config

sudo systemctl restart ssh