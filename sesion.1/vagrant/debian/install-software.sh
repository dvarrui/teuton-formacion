#!/usr/bin/env bash

DISTRO=debian

apt update
apt install -y vim nano
apt install -y tree nmap
apt install -y git

apt install -y figlet
figlet $DISTRO > /etc/motd
echo "" >> /etc/motd
echo "TEUTON" >> /etc/motd
echo "https://github.com/teuton-software/teuton" >> /etc/motd

echo "# Adding more alias" >> /home/vagrant/.bashrc
echo "alias c='clear'" >> /home/vagrant/.bashrc
echo "alias v='vdir'" >> /home/vagrant/.bashrc

lsb_release -d
