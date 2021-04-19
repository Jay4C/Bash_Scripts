#/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-vagrant-on-ubuntu-18-04/

sudo apt install virtualbox

sudo apt update

curl -O https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb

sudo apt install ./vagrant_2.2.6_x86_64.deb

vagrant --version

mkdir ~/my-first-vagrant-project

cd ~/my-first-vagrant-project

vagrant init centos/7

vagrant up

vagrant ssh

vagrant halt

vagrant destroy