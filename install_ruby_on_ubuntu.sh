#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-ruby-on-ubuntu-18-04/

sudo apt update

sudo apt install ruby-full

ruby --version

sudo apt update

sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev

curl -sL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash -

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(rbenv init -)"' >> ~/.bashrc

source ~/.bashrc

rbenv install 2.5.1

rbenv global 2.5.1

ruby -v

sudo apt update

sudo apt install curl g++, gcc, autoconf, automake, bison, libc6-dev, libffi-dev, libgdbm-dev, libncurses5-dev, libsqlite3-dev, libtool, libyaml-dev, make, pkg-config, sqlite3, zlib1g-dev, libgmp-dev, libreadline-dev, libssl-dev

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm install 2.5.1

rvm use 2.5.1 --default

ruby -v