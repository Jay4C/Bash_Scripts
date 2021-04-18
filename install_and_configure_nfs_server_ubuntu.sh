#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-and-configure-an-nfs-server-on-ubuntu-20-04/

sudo apt update

sudo apt install nfs-kernel-server

sudo cat /proc/fs/nfsd/versions

sudo mkdir -p /srv/nfs4/backups

sudo mkdir -p /srv/nfs4/www

sudo mount --bind /opt/backups /srv/nfs4/backups

sudo mount --bind /var/www /srv/nfs4/www

sudo nano /etc/fstab

export host(options)

sudo nano /etc/exports

sudo exportfs -ar

sudo exportfs -v

sudo ufw allow from 192.168.33.0/24 to any port nfs

sudo ufw status

sudo apt update

sudo apt install nfs-common

sudo mkdir -p /backups

sudo mkdir -p /srv/www

sudo mount -t nfs -o vers=4 192.168.33.10:/backups /backups

sudo mount -t nfs -o vers=4 192.168.33.10:/www /srv/www

df -h

sudo nano /etc/fstab

sudo touch /backups/test.txt

sudo touch /srv/www/test.txt

sudo -u www-data touch /srv/www/test.txt

ls -la /srv/www

sudo umount /backups