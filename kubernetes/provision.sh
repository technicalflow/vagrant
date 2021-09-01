#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y \
    gcc \
    make \
    perl \
    curl \
    ca-certificates \
    apt-transport-https \
    linux-image-virtual \
    linux-image-extra-virtual

sudo apt-get autoremove
sudo apt-get purge
sudo apt-get clean

#sudo apt-get remove virtualbox-guest-utils -y
#sudo sh /vagrant/VBoxLinuxAdditions.run

uname -a
hostname
echo DONE
