#!/bin/bash

# follow these steps : https://www.ubuntupit.com/how-to-install-and-use-clamav-antivirus-on-ubuntu-linux/

sudo apt-get update

sudo -E apt-get update

sudo apt update

sudo apt-get install clamav clamav-daemon

clamscan --version

sudo systemctl stop clamav-freshclam

sudo freshclam

sudo systemctl start clamav-freshclam

sudo apt-get install clamtk

clamscan --help

sudo apt-get autoremove

sudo clamscan --infected --remove --recursive

clamscan -r-i --bell ~/Downloads