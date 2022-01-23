#!/bin/sh

su 

apt clean
apt autoclean

apt-get update -y
apt-get upgrade -y 
apt-get dist-upgrade -y
apt-get install update-manager-core -y
apt-get install apt-utils -y

apt-get update -y
apt-get upgrade -y 
apt-get install vim -y
apt-get install htop -y

# verify ubuntu version
cat /etc/lsb-release

# upgrade cuda
apt-get install cuda -y
