#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-change-hostname-on-ubuntu-18-04/

hostnamectl

sudo hostnamectl set-hostname linuxize

nano /etc/hosts

ls -l /etc/cloud/cloud.cfg

sudo vim /etc/cloud/cloud.cfg

hostnamectl