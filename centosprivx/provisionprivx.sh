#!/bin/bash
#!/usr/bin/env bash

set -x

rpm --import https://product-repository.ssh.com/info.fi-ssh.com-pubkey.asc
curl https://product-repository.ssh.com/ssh-products.repo -o /etc/yum.repos.d/ssh-products.repo
yum update -y && yum install -y  PrivX 
cp -f /vagrant/postinstall_env /opt/privx/scripts/postinstall_env
# sudo cat '/opt/privx/scripts/postinstall_env' > /tmp/one && source /tmp/one
# sudo rm -rf /tmp/one
source /opt/privx/scripts/postinstall_env
/opt/privx/scripts/postinstall.sh