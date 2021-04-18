#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-set-up-wireguard-vpn-on-ubuntu-20-04/

sudo apt update

sudo apt install wireguard

wg genkey | sudo tee /etc/wireguard/privatekey | wg pubkey | sudo tee /etc/wireguard/publickey

sudo nano /etc/wireguard/wg0.conf

ip -o -4 route show to default | awk '{print $5}'

sudo chmod 600 /etc/wireguard/{privatekey,wg0.conf}

sudo wg-quick up wg0

sudo wg show wg0

ip a show wg0

sudo systemctl enable wg-quick@wg0

sudo nano /etc/sysctl.conf

sudo sysctl -p

sudo ufw allow 51820/udp

wg genkey | sudo tee /etc/wireguard/privatekey | wg pubkey | sudo tee /etc/wireguard/publickey

sudo nano /etc/wireguard/wg0.conf

sudo wg set wg0 peer CLIENT_PUBLIC_KEY allowed-ips 10.0.0.2

sudo wg-quick up wg0

sudo wg

sudo wg-quick down wg0