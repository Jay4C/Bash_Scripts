#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-atom-text-editor-on-ubuntu-20-04/

sudo apt update

sudo apt install software-properties-common apt-transport-https wget

wget -q https://packagecloud.io/AtomEditor/atom/gpgkey -O- | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main"

sudo apt install atom