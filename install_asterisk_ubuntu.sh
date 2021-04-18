#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-asterisk-on-ubuntu-20-04/

sudo apt update

sudo apt install wget build-essential git autoconf subversion pkg-config libtool

cd /usr/src/

sudo git clone -b next git://git.asterisk.org/dahdi/linux dahdi-linux

cd dahdi-linux

sudo make

sudo make install

cd /usr/src/

sudo git clone -b next git://git.asterisk.org/dahdi/tools dahdi-tools

cd dahdi-tools

sudo autoreconf -i

sudo ./configure

sudo make install

sudo make install-config

sudo dahdi_genconf modules

cd /usr/src/

sudo git clone https://gerrit.asterisk.org/libpri libpri

cd libpri

sudo make

sudo make install

cd /usr/src/

sudo git clone -b 18 https://gerrit.asterisk.org/asterisk asterisk-18

cd asterisk-18/

sudo contrib/scripts/get_mp3_source.sh

sudo contrib/scripts/install_prereq install

sudo ./configure

sudo make menuselect

sudo make -j2

sudo make install

sudo make samples

sudo make basic-pbx

sudo make config

sudo ldconfig

sudo adduser --system --group --home /var/lib/asterisk --no-create-home --gecos "Asterisk PBX" asterisk

sudo nano /etc/default/asterisk

sudo usermod -a -G dialout,audio asterisk

sudo chown -R asterisk: /var/{lib,log,run,spool}/asterisk /usr/lib/asterisk /etc/asterisk

sudo chmod -R 750 /var/{lib,log,run,spool}/asterisk /usr/lib/asterisk /etc/asterisk

sudo systemctl start asterisk

sudo asterisk -vvvr

sudo systemctl enable asterisk

sudo ufw allow 5060/udp

sudo ufw allow 10000:20000/udp