#/!bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-mono-on-ubuntu-20-04/

sudo apt update

sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

sudo apt-add-repository 'deb https://download.mono-project.com/repo/ubuntu stable-focal main'

sudo apt install mono-complete 

mono --version

nano hello.cs

csc hello.cs

mono hello.exe

chmod +x hello.exe

./hello.exe