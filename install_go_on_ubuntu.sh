#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-go-on-ubuntu-18-04/

wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz

sha256sum go1.13.linux-amd64.tar.gz

sudo tar -C /usr/local -xzf go1.13.linux-amd64.tar.gz

nano ~/.profile

source ~/.profile

go version

mkdir ~/go

mkdir -p ~/go/src/hello

cd ~/go/src/hello

go build

./hello