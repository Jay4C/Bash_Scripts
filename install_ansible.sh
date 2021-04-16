#!/bin/bash 

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-20-04

sudo apt update

sudo apt install ansible

sudo nano /etc/ansible/hosts

ansible-inventory --list -y

ansible all -m ping -u root

ansible all -a "df -h" -u root

ansible all -m apt -a "name=vim state=latest" -u root

ansible servers -a "uptime" -u root

ansible server1:server2 -m ping -u root