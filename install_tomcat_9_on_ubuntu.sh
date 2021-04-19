#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-tomcat-9-on-ubuntu-18-04/

sudo apt update

sudo apt install default-jdk

sudo useradd -r -m -U -d /opt/tomcat -s /bin/false tomcat

wget http://www-eu.apache.org/dist/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.tar.gz -P /tmp

sudo tar xf /tmp/apache-tomcat-9*.tar.gz -C /opt/tomcat

sudo ln -s /opt/tomcat/apache-tomcat-9.0.27 /opt/tomcat/latest

sudo chown -RH tomcat: /opt/tomcat/latest

sudo sh -c 'chmod +x /opt/tomcat/latest/bin/*.sh'

sudo nano /etc/systemd/system/tomcat.service

sudo systemctl daemon-reload

sudo systemctl start tomcat

sudo systemctl status tomcat

sudo systemctl enable tomcat

sudo ufw allow 8080/tcp

sudo nano /opt/tomcat/latest/conf/tomcat-users.xml

sudo nano /opt/tomcat/latest/webapps/manager/META-INF/context.xml

sudo nano /opt/tomcat/latest/webapps/host-manager/META-INF/context.xml

sudo systemctl restart tomcat