#!/bin/bash -eux
set -x


echo "deb http://mirrors.kernel.org/debian wheezy-backports main" >> /etc/apt/sources.list

apt-get update
apt-get -y upgrade
