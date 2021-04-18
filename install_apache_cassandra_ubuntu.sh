#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-apache-cassandra-on-ubuntu-20-04/

sudo apt update

sudo apt install openjdk-8-jdk

java -version

sudo apt install apt-transport-https

wget -q -O - https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add -

sudo sh -c 'echo "deb http://www.apache.org/dist/cassandra/debian 311x main" > /etc/apt/sources.list.d/cassandra.list'

sudo apt update

sudo apt install cassandra

nodetool status

cqlsh

UPDATE system.local SET cluster_name = 'Linuxize Cluster' WHERE KEY = 'local';

nodetool flush system

sudo systemctl restart cassandra