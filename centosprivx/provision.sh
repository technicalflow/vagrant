#!/bin/bash

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

sudo echo LANG=en_US.utf-8 >> /etc/environment
sudo echo LC_ALL=en_US.utf-8 >> /etc/environment

sudo timedatectl set-timezone Europe/Warsaw

sudo yum update -y
sudo yum install gcc make perl -y
sudo yum install kernel-devel -y
sudo yum install epel-release -y

echo DONE

# Turn swap off
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

uname -a
hostname

