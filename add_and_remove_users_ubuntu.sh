#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-add-and-delete-users-on-ubuntu-20-04/

sudo adduser username

sudo usermod -aG sudo username

sudo deluser username

sudo deluser --remove-home username