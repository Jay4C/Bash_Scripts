#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-and-configure-zabbix-on-ubuntu-18-04/

sudo mysql

wget https://repo.zabbix.com/zabbix/4.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_4.0-2+bionic_all.deb

sudo apt install ./zabbix-release_4.0-2+bionic_all.deb

sudo apt update

sudo apt install zabbix-server-mysql zabbix-frontend-php zabbix-agent

sudo systemctl restart apache2

zcat /usr/share/doc/zabbix-server-mysql/create.sql.gz | mysql -uzabbix -p zabbix

sudo nano /etc/zabbix/zabbix_server.conf

sudo systemctl restart zabbix-server zabbix-agent

sudo systemctl enable zabbix-server zabbix-agent

sudo systemctl status zabbix-server

wget https://repo.zabbix.com/zabbix/4.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_4.0-2+bionic_all.deb

sudo apt install ./zabbix-release_4.0-2+bionic_all.deb

sudo apt update

sudo apt install zabbix-agent

openssl rand -hex 32 | sudo tee /etc/zabbix/zabbix_agentd.psk

sudo nano /etc/zabbix/zabbix_agentd.conf

sudo systemctl start zabbix-agent

sudo systemctl enable zabbix-agent

sudo ufw allow proto tcp from 192.168.121.70 to any port 10050