#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-set-or-change-timezone-on-ubuntu-18-04/

timedatectl

ls -l /etc/localtime

cat /etc/timezone

timedatectl list-timezones

sudo timedatectl set-timezone your_time_zone

sudo timedatectl set-timezone Europe/Rome

timedatectl

echo "Europe/Rome" | sudo tee /etc/timezone

sudo dpkg-reconfigure --frontend noninteractive tzdata