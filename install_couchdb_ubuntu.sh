#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-couchdb-on-ubuntu-20-04/

curl -L https://couchdb.apache.org/repo/bintray-pubkey.asc | sudo apt-key add -

echo "deb https://apache.bintray.com/couchdb-deb focal main" | sudo tee -a /etc/apt/sources.list

sudo apt update

sudo apt install couchdb

curl http://127.0.0.1:5984/