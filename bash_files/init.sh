#!/usr/bin/env bash

echo "Provisioning virtual machine..."
# ---------------------------------------
#          Virtual Machine Setup
# ---------------------------------------

echo "Adding multiverse sources."
cat > /etc/apt/sources.list.d/multiverse.list << EOF
deb http://archive.ubuntu.com/ubuntu trusty multiverse
deb http://archive.ubuntu.com/ubuntu trusty-updates multiverse
deb http://security.ubuntu.com/ubuntu trusty-security multiverse
EOF

echo "Updating packages"
apt-get update
apt-get install build-essential make gcc > /dev/null

echo "Installing GIT"
apt-get install git -y > /dev/null