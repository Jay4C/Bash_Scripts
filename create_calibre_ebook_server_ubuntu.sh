#!/bin/bash

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-create-a-calibre-ebook-server-on-ubuntu-14-04

sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

sudo apt-get update

sudo apt-get install xvfb

sudo apt-get install imagemagick

mkdir ~/calibre-library

mkdir ~/calibre-library/toadd

cd ~/calibre-library/toadd

wget http://www.gutenberg.org/ebooks/1342.kindle.noimages -O pride.mobi

wget http://www.gutenberg.org/ebooks/46.kindle.noimages -O christmascarol.mobi

xvfb-run calibredb add ~/calibre-library/toadd/* --library-path ~/calibre-library

calibre-server --with-library ~/calibre-library

calibre-server --with-library /path/to/calibre-library

sudo nano /etc/init/calibre-server.conf

sudo start calibre-server

sudo service calibre-server stop

sudo service calibre-server start

sudo service calibre-server restart

crontab -e

*/10 * * * * xvfb-run calibredb add /home/user/calibre-library/toadd/ -r --with-library /home/user/calibre-library && rm /home/user/calibre-server/toadd/*