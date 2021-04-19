#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-add-user-to-sudoers-in-ubuntu/

usermod -aG sudo username

sudo whoami

EDITOR=nano visudo

visudo

echo "username  ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/username