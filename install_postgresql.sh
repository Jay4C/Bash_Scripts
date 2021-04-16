#!/bin/bash 

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-install-postgresql-on-ubuntu-20-04-quickstart

sudo apt update

sudo apt install postgresql postgresql-contrib

sudo -i -u postgres

psql

sudo -u postgres psql

sudo -u postgres createuser --interactive

sudo -u postgres createdb sammy

sudo adduser sammy

sudo -i -u sammy

psql

psql -d postgres