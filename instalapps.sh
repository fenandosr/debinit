#/bin/bash

# Install programs

#

# Build essential
sudo apt-get install build-essential
sudo apt-get install python3-pip

# misc firmware
sudo apt-get install firmware-misc-nonfree

# SSH stuff
sudo apt-get install ssh
sudo apt-get install openssh-client
sudo apt-get install openssh-server
sudo apt-get install sshfs

# Audio
#pulseaudio
#https://wiki.archlinux.org/index.php/PulseAudio
sudo apt-get install pulseaudio-dlna
sudo apt-get install pulseaudio-equalizer

# GDebi
sudo apt-get install gdebi

#cmake
sudo apt-get install cmake

# vim
sudo apt-get install vim

# htop
sudo apt-get install htop

# Git
sudo apt-get install git

# PHP
sudo apt-get install php

# curl
sudo apt-get install php

# net tools
sudo apt-get install net-tools

# GNumeric
sudo apt-get install gnumeric

# SQLite
sudo apt-get install sqlite

# Unrar
sudo apt-get install unrar-free

# screenfetch
sudo apt-get install screenfetch

# kdeconnect
sudo apt-get install kdeconnect

# copyq
sudo apt-get install copyq copyq-plugins

# Pass
### ver https://www.passwordstore.org/
sudo apt-get install pass

# Python
sudo apt-get install python-pip
sudo apt-get install python-setuptools

# R
### Ver https://cran.rstudio.com/bin/linux/debian/
sudo apt-get install r-base r-base-dev
# and the multi-threaded OpenBlas library in order to get higher performance for linear algebra operations
sudo apt-get install libopenblas-base
# recomended
sudo apt-get install r-cran-boot r-cran-class r-cran-cluster r-cran-codetools r-cran-foreign r-cran-kernsmooth r-cran-lattice r-cran-mass r-cran-matrix r-cran-mgcv r-cran-nlme r-cran-nnet r-cran-rpart r-cran-spatial r-cran-survival

# PSPP
# FUNNY!
sudo apt-get install pspp

# notifications...
sudo apt-get install libnotify-bin

# Latex
sudo apt-get install texlive-base

# Texmaker
sudo apt-get install texmaker

# Texstudio
sudo apt-get install texstudio

# Emacs
sudo apt-get install emacs25
# *Suggested: *
sudo apt-get install emacs25-common-non-dfsg

# chrome
sudo apt-get install chromium

# Meld
sudo apt-get install meld

sudo apt-get install git-cola

sudo apt-get install sqlitebrowser

sudo apt-get install calibre

sudo apt-get install cycle

sudo apt-get install aegisub

# Android devolpment
sudo apt-get install adb

sudo apt-get install sirikali
sudo apt-get install ecryptfs-utils

# Whatever
curl --output "$HOME/Downloads/Whatever_1.0.0_amd64.deb" https://excellmedia.dl.sourceforge.net/project/whatever-evernote-client/v1.0.0/Whatever_1.0.0_amd64.deb
sudo gdebi "$HOME/Downloads/Whatever_1.0.0_amd64.deb"

# otros
sudo apt-get install ffmpeg inkscape samba gimp clementine vlc

# snap
# https://docs.snapcraft.io/reference/snap-command#login
sudo apt install snapd
#sudo snap login fenandos@hotmail.com

sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# slack
#sudo snap install --classic slack

# spotify
#sudo snap install spotify
## OR https://www.spotify.com/mx/download/linux/
# 1. Add the Spotify repository signing keys to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client

sudo snap install bitwarden

sudo snap install skype --classic

# https://desktop.telegram.org/

# brave
sudo apt-get install brave

# atom
curl -sL https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install atom
# see https://flight-manual.atom.io/getting-started/sections/installing-atom/

# brackets.io
#curl --output "$HOME/Downloads/Brackets.64-bit.deb" "https://github.com/adobe/brackets/releases/download/release-1.13/Brackets.Release.1.13.64-bit.deb"
#sudo gdebi "$HOME/Downloads/Brackets.64-bit.deb"

# VirtualBox
sudo apt-get install virtualbox

# teamviewer
curl --output "$HOME/Downloads/Teamviewer.64-bit.deb" "https://dl.tvcdn.de/download/linux/version_13x/teamviewer_13.2.13582_amd64.deb"
sudo gdebi "$HOME/Downloads/Teamviewer.64-bit.deb"

# redshift
sudo apt-get install redshift redshift-gtk
# workaround here: https://github.com/jonls/redshift/issues/158
echo """
[redshift]
allowed=true
system=false
users=
""" | sudo tee -a /etc/geoclue/geoclue.conf

# ###Rust
curl https://sh.rustup.rs -sSf | sh

# feh
sudo apt-get install feh

# peco (filtering tool)
sudo apt-get install peco

# fonts
sudo apt-get install fonts-powerline

# Variety
# ver https://peterlevi.com/variety/how-to-install/
# para más instalción y awesomeWM
# ¿Cuál de los siguientes métodos será mejor?
#sudo apt-get install variety
# definitivamente el de arriba ^
#wget -O variety.deb "https://launchpad.net/~peterlevi/+archive/ubuntu/ppa/+files/variety_0.7.0~git201809151602.8eff230~ppa768~ubuntu18.10.1_all.deb"
#sudo gdebi variety.deb
#wget --directory-prefix=$HOME/Downloads -O variety-slideshow.deb --progress "https://launchpad.net/~peterlevi/+archive/ubuntu/ppa/+files/variety-slideshow_0.1-0~25~ubuntu18.10.1_all.deb"
#sudo gdebi variety-slideshow.deb


# Zathura
# https://pwmt.org/projects/zathura/
sudo apt-get install zathura zathura-djvu zathura-ps zathura-cb

## Rstudio!
curl --output "$HOME/Downloads/Rstudio.64-bit.deb" "https://download1.rstudio.org/rstudio-xenial-1.1.456-amd64.deb"
sudo gdebi "$HOME/Downloads/Rstudio.64-bit.deb"

# tmux
sudo apt-get install tmux

# vim
sudo apt-get install vim vim-gtk vim-addon-manager vim-gui-common
sudo apt-get install vim-youcompleteme

# Lynx
sudo apt-get install lynx






# Cairo
# for better rendering in R
# https://shiny.rstudio.com/gallery/plot-interaction-basic.html
# For nicer ggplot2 output when deployed on Linux
sudo apt-get install libxt-dev
sudo apt-get install libcairo2-dev



sudo apt-get install rename



# https://wiki.octave.org/Octave_for_Debian_systems
sudo apt-get install octave




# Copy desktop files
sudo mv /usr/share/applications/firefox.desktop /usr/share/applications/firefox.desktop.BK
sudo cp assets/desktop-files/firefox.desktop /usr/share/applications/

sudo cp assets/desktop-files/firefox_icon_by_obinoobie.png /usr/share/icons/

