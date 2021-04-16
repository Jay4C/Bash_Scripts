#!/bin/bash 

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-set-up-and-configure-an-openvpn-server-on-ubuntu-20-04

sudo apt update

sudo apt install openvpn easy-rsa

mkdir ~/easy-rsa

ln -s /usr/share/easy-rsa/* ~/easy-rsa/

sudo chown sammy ~/easy-rsa

chmod 700 ~/easy-rsa

cd ~/easy-rsa

nano vars

./easyrsa init-pki

cd ~/easy-rsa

./easyrsa gen-req server nopass

sudo cp /home/sammy/easy-rsa/pki/private/server.key /etc/openvpn/server/

scp /home/sammy/easy-rsa/pki/reqs/server.req sammy@your_ca_server_ip:/tmp

cd ~/easy-rsa

./easyrsa import-req /tmp/server.req server

./easyrsa sign-req server server

scp pki/issued/server.crt sammy@your_vpn_server_ip:/tmp

scp pki/ca.crt sammy@your_vpn_server_ip:/tmp

sudo cp /tmp/{server.crt,ca.crt} /etc/openvpn/server

cd ~/easy-rsa

openvpn --genkey --secret ta.key

sudo cp ta.key /etc/openvpn/server

mkdir -p ~/client-configs/keys

chmod -R 700 ~/client-configs

cd ~/easy-rsa

./easyrsa gen-req client1 nopass

cp pki/private/client1.key ~/client-configs/keys/

scp pki/reqs/client1.req sammy@your_ca_server_ip:/tmp

cd ~/easy-rsa

./easyrsa import-req /tmp/client1.req client1

./easyrsa sign-req client client1

scp pki/issued/client1.crt sammy@your_server_ip:/tmp

cp /tmp/client1.crt ~/client-configs/keys/

cp ~/easy-rsa/ta.key ~/client-configs/keys/

sudo cp /etc/openvpn/server/ca.crt ~/client-configs/keys/

sudo chown sammy.sammy ~/client-configs/keys/*

sudo cp /usr/share/doc/openvpn/examples/sample-config-files/server.conf.gz /etc/openvpn/server/

sudo gunzip /etc/openvpn/server/server.conf.gz

sudo nano /etc/openvpn/server/server.conf

sudo nano /etc/sysctl.conf

sudo sysctl -p

ip route list default

sudo nano /etc/ufw/before.rules

sudo nano /etc/default/ufw

sudo ufw allow 1194/udp

sudo ufw allow OpenSSH

sudo ufw disable

sudo ufw enable

sudo systemctl -f enable openvpn-server@server.service

sudo systemctl start openvpn-server@server.service

sudo systemctl status openvpn-server@server.service

mkdir -p ~/client-configs/files

cp /usr/share/doc/openvpn/examples/sample-config-files/client.conf ~/client-configs/base.conf

nano ~/client-configs/base.conf

nano ~/client-configs/make_config.sh

chmod 700 ~/client-configs/make_config.sh

cd ~/client-configs

./make_config.sh client1

ls ~/client-configs/files

sudo apt update

sudo apt install openvpn

sudo dnf install epel-release

sudo dnf install openvpn

cat /etc/resolv.conf

sudo apt install openvpn-systemd-resolved

nano client1.ovpn

ls /etc/openvpn

nano client1.ovpn

sudo openvpn --config client1.ovpn

systemd-resolve --status tun0

sudo cp /tmp/crl.pem /etc/openvpn/server/

sudo nano /etc/openvpn/server/server.conf

sudo systemctl restart openvpn-server@server.service