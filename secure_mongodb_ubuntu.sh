#!/bin/bash

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-secure-mongodb-on-ubuntu-18-04

mongo

show dbs

use admin

db.createUser(
{
user: "AdminSammy",
pwd: "password",
pwd: passwordPrompt(),
roles: [ { role: "userAdminAnyDatabase", db: "admin" }, "readWriteAnyDatabase" ]
}
)

exit

sudo nano /etc/mongod.conf

sudo systemctl restart mongod

sudo systemctl status mongod

mongo

show dbs

exit

mongo -u AdminSammy -p --authenticationDatabase admin

show dbs