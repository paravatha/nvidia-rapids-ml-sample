#!/bin/sh

su 
 
apt-get update -y
apt-get upgrade -y 
apt-get dist-upgrade -y
apt-get install update-manager-core
apt-get install vim -y
apt-get install cuda -y
