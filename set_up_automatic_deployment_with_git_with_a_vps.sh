#!/bin/bash

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-set-up-automatic-deployment-with-git-with-a-vps

cd /var

mkdir repo && cd repo

mkdir site.git && cd site.git

git init --bare

ls

cd hooks

cat > post-receive

chmod +x post-receive

cd /var/www/

mkdir beta

cd /var/repo

mkdir beta.git && cd beta.git

git init --bare

cd hooks

cat > post-receive

chmod +x post-receive

cd /var/repo/beta.git

git remote add live ../site.git

cd /var/repo/beta.git

git push live master