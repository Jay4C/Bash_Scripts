#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-go-on-ubuntu-20-04/

wget -c https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz -O - | sudo tar -xz -C /usr/local

sudo nano /etc/profile

source ~/.profile

go version

mkdir ~/go

mkdir -p ~/go/src/hello

cd ~/go/src/hello

go build

./hello