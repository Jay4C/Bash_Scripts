#!/bin/bash

# follow these steps : https://sawtooth.hyperledger.org/docs/core/releases/latest/sysadmin_guide/installation.html

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 8AA7AF1F1091A5FD

sudo add-apt-repository 'deb [arch=amd64] http://repo.sawtooth.me/ubuntu/chime/stable bionic universe'

sudo apt-get update

sudo apt-get install -y sawtooth

sudo apt-get install -y sawtooth sawtooth-pbft-engine

sudo apt-get install -y sawtooth python3-sawtooth-poet-cli python3-sawtooth-poet-engine python3-sawtooth-poet-families

dpkg -l '*sawtooth*'

sudo systemctl start sawtooth-rest-api.service

sudo systemctl start sawtooth-validator.service

sudo systemctl start sawtooth-settings-tp.service

sudo systemctl start sawtooth-identity-tp.service

sudo systemctl start sawtooth-intkey-tp-python.service