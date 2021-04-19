#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-pip-on-ubuntu-20.04/

sudo apt update

sudo apt install python3-pip

pip3 --version

pip3 --help

pip3 install --help

pip3 install scrapy

pip3 install scrapy==1.5

pip3 install -r requirements.txt

pip3 list

pip3 install --upgrade package_name