#!/bin/bash 

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-vnc-on-ubuntu-20-04-quickstart

sudo apt update

sudo apt install xfce4 xfce4-goodies

sudo apt install tightvncserver

vncpasswd

nano ~/.vnc/xstartup

chmod +x ~/.vnc/xstartup

vncserver -localhost

ssh -L 59000:localhost:5901 -C -N -l sammy your_server_ip

sudo nano /etc/systemd/system/vncserver@.service

sudo systemctl daemon-reload

sudo systemctl enable vncserver@1.service

vncserver -kill :1

sudo systemctl start vncserver@1

sudo systemctl status vncserver@1