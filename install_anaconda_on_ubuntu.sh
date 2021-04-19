#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-anaconda-on-ubuntu-18-04/

cd /tmp

curl -O https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh

sha256sum Anaconda3-5.2.0-Linux-x86_64.sh

bash Anaconda3-5.2.0-Linux-x86_64.sh

source ~/.bashrc

conda info

conda update conda

conda update anaconda