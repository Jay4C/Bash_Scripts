#!/bin/bash

# follow these steps : https://devconnected.com/how-to-install-and-enable-ssh-server-on-ubuntu-20-04/

sudo -l

groups

ssh -V

sudo apt-get update

sudo apt-get install openssh-server

sudo systemctl status sshd

netstat -tulpn | grep 22^

sudo ufw allow ssh

sudo ufw status

sudo systemctl list-unit-files | grep enabled | grep ssh

sudo systemctl enable ssh

ll /etc/ssh/

sudo nano /etc/ssh/sshd_config

sudo systemctl restart sshd

sudo systemctl status sshd

netstat -tulpn | grep 2222

# change the port, the username, the ip address
ssh -p <port> <username>@<ip_address>

sudo ifconfig

# change the username
ssh -p 2222 <user>@127.0.0.1

logout

sudo systemctl stop sshd

sudo systemctl status sshd