#!/bin/bash

cd /tmp

# Install required packages
#
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -y upgrade
apt-get -y install libunwind8 libnuma1 libjemalloc1 libc++1 gdb libcurl3 openssl python python3 libgssapi$

# Configure UTF-8 locale
#
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen

# Install packages.microsoft.com repository configuration
#
wget http://packages.microsoft.com/ubuntu/16.04/prod/pool/main/p/packages-microsoft-prod/packages-microso$
dpkg -i packages-microsoft-prod_1.0-1-xenial.deb

# Install mssql-tools package
#
apt-get update
ACCEPT_EULA=Y apt-get -y --no-install-recommends install mssql-tools

# Remove files from /tmp
#
rm -rf /tmp/*

# Remove files from apt cache
#
apt-get clean
rm -rf /var/lib/apt/lists/*
