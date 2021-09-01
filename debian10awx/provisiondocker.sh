#!/bin/bash

#!/usr/bin/env bash

# Install recommended extra packages
#sudo apt-get install -y \
#    linux-image-virtual \
#    linux-image-extra-virtual

sudo apt-get install -y \
    ca-certificates \
    apt-transport-https

sudo curl -fsSL https://get.docker.com | sudo sh

sudo usermod -aG docker vagrant

sudo service docker restart

docker version
