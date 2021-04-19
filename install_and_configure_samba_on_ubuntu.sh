#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-and-configure-samba-on-ubuntu-18-04/

sudo apt update

sudo apt install samba

sudo systemctl status smbd

sudo ufw allow 'Samba'

sudo cp /etc/samba/smb.conf{,.backup}

sudo nano /etc/samba/smb.conf

sudo systemctl restart smbd

sudo systemctl restart nmbd

sudo mkdir /samba

sudo chgrp sambashare /samba

sudo useradd -M -d /samba/josh -s /usr/sbin/nologin -G sambashare josh

sudo mkdir /samba/josh

sudo chown josh:sambashare /samba/josh

sudo chmod 2770 /samba/josh

sudo smbpasswd -a josh

sudo smbpasswd -e josh

sudo useradd -M -d /samba/users -s /usr/sbin/nologin -G sambashare sadmin

sudo smbpasswd -a sadmin

sudo smbpasswd -e sadmin

sudo mkdir /samba/users

sudo chown sadmin:sambashare /samba/users

sudo chmod 2770 /samba/users

sudo nano /etc/samba/smb.conf

sudo systemctl restart smbd

sudo systemctl restart nmbd

sudo apt install smbclient

sudo yum install samba-client

mbclient //samba_hostname_or_server_ip/share_name -U username

smbclient //192.168.121.118/josh -U josh

sudo apt install cifs-utils

sudo yum install cifs-utils

sudo mkdir /mnt/smbmount

sudo mount -t cifs -o username=username //samba_hostname_or_server_ip/sharename /mnt/smbmount

sudo mount -t cifs -o username=josh //192.168.121.118/josh /mnt/smbmount