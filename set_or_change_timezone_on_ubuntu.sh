#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-set-or-change-timezone-on-ubuntu-20-04/

timedatectl

ls -l /etc/localtime

cat /etc/timezone

timedatectl list-timezones

sudo timedatectl set-timezone your_time_zone

sudo timedatectl set-timezone America/New_York

timedatectl