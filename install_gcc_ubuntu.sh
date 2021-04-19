#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-gcc-on-ubuntu-20-04/

sudo apt update

sudo apt install build-essential

sudo apt-get install manpages-dev

gcc --version

nano hello.c

gcc hello.c -o hello

./hello

sudo apt install gcc-8 g++-8 gcc-9 g++-9 gcc-10 g++-10

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 100 --slave /usr/bin/g++ g++ /usr/bin/g++-10 --slave /usr/bin/gcov gcov /usr/bin/gcov-10

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 90 --slave /usr/bin/g++ g++ /usr/bin/g++-9 --slave /usr/bin/gcov gcov /usr/bin/gcov-9

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 80 --slave /usr/bin/g++ g++ /usr/bin/g++-8 --slave /usr/bin/gcov gcov /usr/bin/gcov-8

sudo update-alternatives --config gcc