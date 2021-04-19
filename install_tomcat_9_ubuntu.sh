#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-tomcat-9-on-ubuntu-20-04/

sudo apt update

sudo apt install openjdk-11-jdk

java -version

sudo useradd -m -U -d /opt/tomcat -s /bin/false tomcat

VERSION=9.0.35

wget https://www-eu.apache.org/dist/tomcat/tomcat-9/v${VERSION}/bin/apache-tomcat-${VERSION}.tar.gz -P /tmp

sudo tar -xf /tmp/apache-tomcat-${VERSION}.tar.gz -C /opt/tomcat/

sudo ln -s /opt/tomcat/apache-tomcat-${VERSION} /opt/tomcat/latest

sudo chown -R tomcat: /opt/tomcat

sudo sh -c 'chmod +x /opt/tomcat/latest/bin/*.sh'

sudo nano /etc/systemd/system/tomcat.service

sudo systemctl daemon-reload

sudo systemctl enable --now tomcat

sudo systemctl status tomcat

sudo systemctl start tomcat

sudo systemctl stop tomcat

sudo systemctl restart tomcat

sudo ufw allow 8080/tcp

sudo nano /opt/tomcat/latest/conf/tomcat-users.xml

sudo nano /opt/tomcat/latest/webapps/manager/META-INF/context.xml

sudo nano /opt/tomcat/latest/webapps/host-manager/META-INF/context.xml

sudo systemctl restart tomcat