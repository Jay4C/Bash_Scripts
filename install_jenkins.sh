#!/bin/bash

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-install-jenkins-on-ubuntu-18-04

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt update

sudo apt install jenkins

sudo systemctl start jenkins

sudo systemctl status jenkins

sudo ufw allow 8080

sudo ufw status

sudo ufw allow OpenSSH

sudo ufw enable

sudo cat /var/lib/jenkins/secrets/initialAdminPassword