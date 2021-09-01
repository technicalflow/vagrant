#!/bin/bash

# disabled becouse of ansible provisioning
# sudo apt-get update
# sudo apt-get -y upgrade

export DEBIAN_FRONTEND=noninteractive
export LANGUAGE=en_US.UTF-8 
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

echo Provisioning
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y \
    gcc \
    make \
    perl \
    curl
#    linux-image-virtual
#    linux-image-extra-virtual
# sudo apt-get remove virtualbox-guest-utils -y
# sudo sh /vagrant/VBoxLinuxAdditions.run

#LXD
sudo snap remove lxd
sudo snap install lxd

uname -a
sudo usermod -aG lxd vagrant
sudo systemctl stop unattended-upgrades
sudo systemctl disable unattended-upgrades
hostname
echo DONE
