#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-enable-and-disable-root-user-account-in-ubuntu/

usermod -aG sudo username

sudo some-command

sudo visudo

sudo passwd root

sudo passwd -l root