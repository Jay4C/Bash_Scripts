#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-slack-on-ubuntu-18-04/

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb

sudo apt install ./slack-desktop-*.deb

slack

cat /etc/apt/sources.list.d/slack.list