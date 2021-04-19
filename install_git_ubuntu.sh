#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-git-on-ubuntu-20-04/

sudo apt update

sudo apt install git

git --version

git config --global user.name "Your Name"

git config --global user.email "youremail@yourdomain.com"

git config --list