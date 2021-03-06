#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-r-on-ubuntu-18-04/

sudo apt install apt-transport-https software-properties-common

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'

sudo apt update

sudo apt install r-base

R --version

sudo apt install build-essential

sudo -i R