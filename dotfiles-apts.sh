#!/bin/bash
#:------------------------------------------------------------------------------
#: Usage: ./debasics.sh
#: Purpose: My basic debian packages
#:------------------------------------------------------------------------------
# zsh
sudo apt-get install zsh
sudo apt-get install zsh-antigen

# tmux
sudo apt-get install tmux

# vim
sudo apt-get install vim vim-gtk vim-addon-manager vim-gui-common

# xclip
#sudo apt-get install xclip

# SSH
#sudo apt-get install ssh
#sudo apt-get install openssh-client

#   SSH-ADD
#ssh-keygen -t rsa -b 4096 -C "<mail>"
#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/id_rsa

