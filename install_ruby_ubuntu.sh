#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-ruby-on-ubuntu-20-04/

sudo apt update

sudo apt install ruby-full

ruby --version

sudo apt update

sudo apt install git curl autoconf bison build-essential \
    libssl-dev libyaml-dev libreadline6-dev zlib1g-dev \
    libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev

curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(rbenv init -)"' >> ~/.bashrc

source ~/.bashrc

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc

echo 'eval "$(rbenv init -)"' >> ~/.zshrc

source ~/.zshrc

rbenv -v

rbenv install -l

rbenv install 2.7.1

rbenv global 2.7.1

sudo apt update

sudo apt install curl g++ gcc autoconf automake bison libc6-dev \
        libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool \
        libyaml-dev make pkg-config sqlite3 zlib1g-dev libgmp-dev \
        libreadline-dev libssl-dev

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm list known

rvm install ruby

rvm --default use ruby

ruby -v

rvm install ruby-x.x.x

rvm --default use ruby-x.x.x

rvm use ruby-x.x.x