#!/bin/bash

# follow these steps : https://linuxize.com/post/install-java-on-ubuntu-20-04/

sudo apt update

sudo apt install openjdk-11-jdk

java -version

sudo update-alternatives --config java

sudo nano /etc/environment

source /etc/environment

echo $JAVA_HOME