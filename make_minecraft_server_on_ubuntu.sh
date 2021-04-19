#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-make-minecraft-server-on-ubuntu-20-04/

sudo apt update

sudo apt install git build-essential

sudo apt install openjdk-11-jre-headless

java -version

sudo useradd -r -m -U -d /opt/minecraft -s /bin/bash minecraft

sudo su - minecraft

mkdir -p ~/{backups,tools,server}

git clone https://github.com/Tiiffi/mcrcon.git ~/tools/mcrcon

cd ~/tools/mcrcon

gcc -std=gnu11 -pedantic -Wall -Wextra -O2 -s -o mcrcon mcrcon.c

./mcrcon -v

wget https://launcher.mojang.com/v1/objects/a0d03225615ba897619220e256a266cb33a44b6b/server.jar -P ~/server

cd ~/server

java -Xmx1024M -Xms1024M -jar server.jar nogui

nano ~/server/eula.txt

nano ~/server/server.properties

sudo nano /etc/systemd/system/minecraft.service

sudo systemctl daemon-reload

sudo systemctl start minecraft

sudo systemctl status minecraft

sudo systemctl enable minecraft

sudo ufw allow 25565/tcp

sudo su - minecraft

nano /opt/minecraft/tools/backup.sh

chmod +x /opt/minecraft/tools/backup.sh

crontab -e

/opt/minecraft/tools/mcrcon/mcrcon -H 127.0.0.1 -P 25575 -p strong-password -t