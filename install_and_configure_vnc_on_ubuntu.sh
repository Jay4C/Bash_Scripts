#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-and-configure-vnc-on-ubuntu-18-04/

sudo apt update

sudo apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils

sudo apt install tigervnc-standalone-server tigervnc-common

vncserver

vncserver -kill :1

nano ~/.vnc/xstartup

chmod u+x ~/.vnc/xstartup

sudo nano /etc/systemd/system/vncserver@.service

sudo systemctl daemon-reload

sudo systemctl enable vncserver@1.service

sudo systemctl start vncserver@1.service

sudo systemctl status vncserver@1.service

ssh -L 5901:127.0.0.1:5901 -N -f -l username server_ip_address