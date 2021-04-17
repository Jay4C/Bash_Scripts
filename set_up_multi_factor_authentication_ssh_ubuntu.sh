#!/bin/bash

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-set-up-multi-factor-authentication-for-ssh-on-ubuntu-18-04

sudo apt-get update

sudo apt-get install libpam-google-authenticator

google-authenticator

sudo cp /etc/pam.d/sshd /etc/pam.d/sshd.bak

sudo nano /etc/pam.d/sshd

sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

sudo nano /etc/ssh/sshd_config

sudo systemctl restart sshd.service

sudo nano /etc/ssh/sshd_config

sudo nano /etc/pam.d/sshd

sudo systemctl restart sshd.service

sudo nano /etc/pam.d/sshd

sudo systemctl restart sshd.service

head -n 1 /home/sammy/.google_authenticator

google-authenticator -t -d -f -r 3 -R 30 -w 3