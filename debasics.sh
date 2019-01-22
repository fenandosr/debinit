#!/bin/bash

mv /etc/apt/sources.list /etc/apt/sources.list.BK
cp assets/apt/sources.list /etc/apt/sources.list

mv /etc/profile /etc/profile.BK
cp assets/profile /etc/profile

source /etc/profile

apt-get update

apt-get install build-essential

apt-get install firmware-misc-nonfree

apt-get install firmware-iwlwifi

apt-get install net-tools

apt-get install trash-cli

apt-get install firmware-realtek

apt-get install curl wget

apt-get install xclip xsel

apt-get install vim

apt-get install git

apt-get install gdebi aptitude

# check which display manager
# https://unix.stackexchange.com/questions/20370/is-there-a-simple-linux-command-that-will-tell-me-what-my-display-manager-is
#cat /etc/X11/default-display-manager
#aptitude search '~i~Px-display-manager'
# see https://blog.sombex.com/2018/01/install-multiple-display-manager-and-switch-display-manager-debian.html

apt-get install sddm

apt-get upgrade
apt-get clean
