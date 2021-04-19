#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-create-a-sudo-user-on-ubuntu/

ssh root@server_ip_address

adduser username

usermod -aG sudo username

su - username

sudo whoami

sudo ls -l /root