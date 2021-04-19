#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-gradle-on-ubuntu-20-04/

sudo apt update

sudo apt install openjdk-11-jdk

java -version

VERSION=6.5.1

wget https://services.gradle.org/distributions/gradle-${VERSION}-bin.zip -P /tmp

sudo unzip -d /opt/gradle /tmp/gradle-${VERSION}-bin.zip

sudo ln -s /opt/gradle/gradle-${VERSION} /opt/gradle/latest

sudo nano /etc/profile.d/gradle.sh

sudo chmod +x /etc/profile.d/gradle.sh

source /etc/profile.d/gradle.sh

gradle -v