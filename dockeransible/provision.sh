#!/bin/bash

# disabled becouse of ansible provisioning
# sudo apt-get update
# sudo apt-get -y upgrade
export DEBIAN_FRONTEND=noninteractive
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
sudo apt-get update
sudo apt-get install -y \
    gcc \
    make \
    perl \
    linux-image-virtual \
    linux-image-extra-virtual

# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh
# sudo usermod -aG docker vagrant


uname -a
hostname
echo DONE
