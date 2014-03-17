#!/bin/sh
#
# Ubuntu Equip 
# Equip basec/core libs
# Licence: MIT
# source: https://raw.github.com/aglover/ubuntu-equip/master/equip_base.sh

sudo apt-get update -y

sudo apt-get install build-essential rsync screen -y
sudo apt-get install strace tcpdump -y
sudo apt-get install libssl-dev zlib1g-dev libcurl3-dev libxslt-dev -y
sudo apt-get install lib32z1-dev bison flex lib32ncurses5-dev libx11-dev gperf g++-multilib -y
sudo apt-get install python-software-properties -y

sudo apt-get install git curl -y 
