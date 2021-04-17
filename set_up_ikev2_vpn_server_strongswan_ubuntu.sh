#!/bin/bash

# follow these steps : https://www.digitalocean.com/community/tutorials/how-to-set-up-an-ikev2-vpn-server-with-strongswan-on-ubuntu-20-04

sudo apt update

sudo apt install strongswan strongswan-pki libcharon-extra-plugins libcharon-extauth-plugins libstrongswan-extra-plugins

mkdir -p ~/pki/{cacerts,certs,private}

chmod 700 ~/pki

pki --gen --type rsa --size 4096 --outform pem > ~/pki/private/ca-key.pem

pki --self --ca --lifetime 3650 --in ~/pki/private/ca-key.pem \
    --type rsa --dn "CN=VPN root CA" --outform pem > ~/pki/cacerts/ca-cert.pem

pki --gen --type rsa --size 4096 --outform pem > ~/pki/private/server-key.pem

pki --pub --in ~/pki/private/server-key.pem --type rsa \
    | pki --issue --lifetime 1825 \
        --cacert ~/pki/cacerts/ca-cert.pem \
        --cakey ~/pki/private/ca-key.pem \
        --dn "CN=server_domain_or_IP" --san server_domain_or_IP \
        --flag serverAuth --flag ikeIntermediate --outform pem \
    >  ~/pki/certs/server-cert.pem

sudo cp -r ~/pki/* /etc/ipsec.d/

sudo mv /etc/ipsec.conf{,.original}

sudo nano /etc/ipsec.conf

sudo nano /etc/ipsec.secrets

sudo systemctl restart strongswan-starter

sudo ufw allow OpenSSH

sudo ufw enable

sudo ufw allow 500,4500/udp

ip route show default

sudo nano /etc/ufw/before.rules

sudo nano /etc/ufw/sysctl.conf

sudo ufw disable

sudo ufw enable

cat /etc/ipsec.d/cacerts/ca-cert.pem

 sudo apt update

sudo apt install strongswan libcharon-extra-plugins

sudo cp /tmp/ca-cert.pem /etc/ipsec.d/cacerts

sudo systemctl disable --now strongswan-starter

sudo nano /etc/ipsec.secrets

sudo systemctl start strongswan-starter

sudo systemctl stop strongswan-starter

sudo apt update

sudo apt install strongswan libcharon-extra-plugins

sudo cp /tmp/ca-cert.pem /etc/ipsec.d/cacerts

sudo charon-cmd --cert ca-cert.pem --host vpn_domain_or_IP --identity your_username