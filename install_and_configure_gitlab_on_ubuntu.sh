#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-and-configure-gitlab-on-ubuntu-18-04/

sudo apt update

sudo apt install curl openssh-server ca-certificates

debconf-set-selections <<< "postfix postfix/mailname string $(hostname -f)"

debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"

sudo apt install postfix

curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash

sudo apt install gitlab-ce

sudo ufw allow OpenSSH

sudo ufw allow http

sudo ufw allow https

sudo ufw status

sudo nano /etc/gitlab/gitlab.rb

sudo gitlab-ctl reconfigure

cat ~/.ssh/id_rsa.pub

ssh-keygen -t rsa -b 4096 -C "your_email@domain.com"