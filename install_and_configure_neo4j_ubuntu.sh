#!/bin/bash

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-neo4j-on-ubuntu-20-04

sudo apt update

sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -

sudo add-apt-repository "deb https://debian.neo4j.com stable 4.1"

sudo apt install neo4j

sudo systemctl enable neo4j.service

sudo systemctl status neo4j.service

cypher-shell

:exit

sudo nano /etc/neo4j/neo4j.conf

cypher-shell -a 'neo4j://your_hostname:7687'

cypher-shell -a 'neo4j://ip6-localhost:7687'

sudo ufw allow from 203.0.113.1 to any port 7687 proto tcp

sudo ufw allow from 192.0.2.0/24 to any port 7687 proto tcp

sudo ufw allow from 2001:DB8::1/128 to any port 7687 proto tcp

sudo ufw allow from 2001:DB8::/32 to any port 7687 proto tcp

sudo ufw reload

sudo ufw status

cypher-shell

cypher-shell -a 'neo4j://203.0.113.1:7687'

cypher-shell -a 'neo4j://your_hostname:7687'

CREATE (:Shark {name: 'Great White'});

CREATE
(:Shark {name: 'Hammerhead'})-[:FRIEND]->
(:Shark {name: 'Sammy'})-[:FRIEND]->
(:Shark {name: 'Megalodon'});

MATCH (a:Shark),(b:Shark)
WHERE a.name = 'Sammy' AND b.name = 'Megalodon'
CREATE (a)-[r:ORDER { name: 'Lamniformes' }]->(b)
RETURN type(r), r.name;

MATCH (a:Shark),(b:Shark)
WHERE a.name = 'Sammy' AND b.name = 'Hammerhead'
CREATE (a)-[r:SUPERORDER { name: 'Selachimorpha'}]->(b)
RETURN type(r), r.name;

MATCH (a)-[r]->(b)
RETURN a.name,r,b.name
ORDER BY r;