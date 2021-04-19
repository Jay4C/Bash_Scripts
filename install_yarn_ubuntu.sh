#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-yarn-on-ubuntu-20-04/

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update

sudo apt install yarn

sudo apt install --no-install-recommends yarn

yarn --version

mkdir ~/my_project && cd ~/my_project

yarn init my_project

yarn add [package_name]

yarn add [package_name]@[version_or_tag]

yarn upgrade

yarn upgrade [package_name]

yarn upgrade [package_name]@[version_or_tag]

yarn remove [package_name]

yarn

yarn install