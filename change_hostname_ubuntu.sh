#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-change-hostname-on-ubuntu-20-04/

hostnamectl

sudo hostnamectl set-hostname host.example.com

sudo hostnamectl set-hostname "Your Pretty HostName" --pretty

sudo hostnamectl set-hostname host.example.com --static

sudo hostnamectl set-hostname host.example.com --transient

sudo hostnamectl set-hostname neptune.linuxize.com

sudo hostnamectl set-hostname "Linuxize's laptop" --pretty

sudo vim /etc/cloud/cloud.cfg

hostnamectl