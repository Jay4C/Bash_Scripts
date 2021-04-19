#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-visual-studio-code-on-ubuntu-20-04/

sudo apt update

sudo apt install software-properties-common apt-transport-https wget

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

sudo apt install code

sudo apt update

sudo apt upgrade

code