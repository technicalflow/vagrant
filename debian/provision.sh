#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

# disabled becouse of ansible provisioning
# sudo apt-get update
# sudo apt-get -y upgrade

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
sudo apt-get install -y \
    gcc \
    make \
    curl \
    perl

# only for Debian 9.9 ->
# sudo apt-get install -y linux-headers-4.9.0-9-all-amd64 
# <-
echo DONE
# sudo apt-get remove virtualbox-guest-utils -y
# sudo sh /vagrant/VBoxLinuxAdditions.run

# Turn swap off
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

uname -a
hostname
