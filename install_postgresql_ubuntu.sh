#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-postgresql-on-ubuntu-20-04/

sudo apt update

sudo apt install postgresql postgresql-contrib

sudo -u postgres psql -c "SELECT version();"

sudo su - postgres

psql

\q

sudo -u postgres psql

sudo su - postgres -c "createuser john"

sudo su - postgres -c "createdb johndb"

sudo -u postgres psql

GRANT ALL PRIVILEGES ON DATABASE johndb TO john;

sudo nano /etc/postgresql/12/main/postgresql.conf

sudo service postgresql restart

ss -nlt | grep 5432

sudo ufw allow proto tcp from 192.168.1.0/24 to any port 5432