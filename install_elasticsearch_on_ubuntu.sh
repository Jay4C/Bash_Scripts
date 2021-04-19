#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-elasticsearch-on-ubuntu-20-04/

sudo apt update

sudo apt install apt-transport-https ca-certificates wget

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

sudo sh -c 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/elastic-7.x.list'

sudo apt update

sudo apt install elasticsearch

sudo systemctl enable --now elasticsearch.service

curl -X GET "localhost:9200/"

sudo journalctl -u elasticsearch

sudo ufw allow proto tcp from 192.168.121.0/24 to any port 6379

sudo nano /etc/elasticsearch/elasticsearch.yml

sudo systemctl restart elasticsearch