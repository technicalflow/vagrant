#!/bin/bash
#!/usr/bin/env bash

# disabled becouse of ansible provisioning
sudo apt-get update
sudo apt-get -y upgrade

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

sudo apt-get install -y \
    gcc \
    make \
    curl \
    wget \
    perl

# sudo apt-get remove virtualbox-guest-utils -y
# sudo sh /vagrant/VBoxLinuxAdditions.run

# Turn swap off
#sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

uname -a
hostname

echo DONE