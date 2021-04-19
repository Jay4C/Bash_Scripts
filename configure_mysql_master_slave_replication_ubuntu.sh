#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-configure-mysql-master-slave-replication-on-ubuntu-18-04/

sudo apt-get update

sudo apt-get install mysql-server

sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf

sudo systemctl restart mysql

sudo mysql

sudo mysql