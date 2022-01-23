#!/bin/sh

su 

# Disable nvidia-ml and cudatoolkit
cd /etc/apt/sources.list.d/
for i in *.list; do
  mv $i ${i}.disabled
done

cd /dli/task/

# update ubuntu 16.04 to 18.04, run this again to upgrade to 20.04
apt clean
apt autoclean

apt-get update -y
apt-get upgrade -y 
apt-get dist-upgrade -y
apt-get install update-manager-core -y
do-release-upgrade &&  apt-get autoremove
apt-get install vim -y

# verify ubuntu version
cat /etc/lsb-release

# Enable nvidia-ml and cudatoolkit
cd /etc/apt/sources.list.d/
for i in *.list.disabled; do
  mv $i ${i}.list
done

# upgrade cuda
apt-get install cuda -y


apt clean
apt update
apt purge nvidia-* 
apt autoremove
apt install -y cuda