#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-apache-maven-on-ubuntu-18-04/

sudo apt update

sudo apt install maven

mvn -version

sudo apt update

sudo apt install default-jdk

java -version

wget https://www-us.apache.org/dist/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz -P /tmp

sudo tar xf /tmp/apache-maven-*.tar.gz -C /opt

sudo ln -s /opt/apache-maven-3.6.0 /opt/maven

sudo nano /etc/profile.d/maven.sh

sudo chmod +x /etc/profile.d/maven.sh

source /etc/profile.d/maven.sh

mvn -version