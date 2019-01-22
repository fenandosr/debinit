# zsh
#sudo apt-get install zsh
#sudo apt-get install zsh-antigen

# tmux
#sudo apt-get install tmux

# vim
#sudo apt-get install vim vim-gtk vim-addon-manager vim-gui-common

# xclip
#sudo apt-get install xclip

# SSH
#sudo apt-get install ssh
#sudo apt-get install openssh-client

#   SSH-ADD
#ssh-keygen -t rsa -b 4096 -C "<mail>"
#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/id_rsa

#   Add to github
# Follow rules..
# https://help.github.com/articles/checking-for-existing-ssh-keys/
# https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
# https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/
#xclip -sel clip < ~/.ssh/id_rsa.pub

# Obviusly inspired by jdavis

if [[ -d ~/.git ]]; then
    echo "Oh my. It looks like you already have a Git repository in your home directory. You'll need to fix this before you install the dotfiles."
    exit
fi

if [[ -d ~/dotfiles.old ]]; then
    echo "Well, I was going to put all your old files into dotfiles.old, but it appears you already have a directory named that. Move it and try again... Please?"
    exit
fi

hash git 2> /dev/null || {
    echo "Oh dear. I require Git, but it's not installed."
    exit
}

cd ~/
echo
echo "Initializing a blank repo..."
git init .

echo
echo "Adding dotfiles remote origin...."
# https://help.github.com/articles/adding-a-remote/
git remote add origin https://github.com/fenandosr/dotfiles.git
git remote -v

echo
echo "Fetching code..."
git fetch

echo
echo "Moving old dotfiles so we don't have a clash..."
mkdir dotfiles.old
git ls-tree --name-only origin/master | xargs mv '{}' dotfiles.old/ > /dev/null 2>&1

echo
echo "Checking out remote branch..."
git checkout -b master remotes/origin/master
#git pull origin master

echo
echo "Setting up submodules..."
git submodule init
git submodule update

builtin cd ~/.vim
git submodule init
git submodule update

echo
echo
echo "All old dotfiles were moved to dotfiles.old."

# install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle

echo
echo
echo "To install Vundle Bundles, run the command below:"
echo "    vim +BundleInstall +qall"

# Fonts correctly
# https://github.com/vim-airline/vim-airline/wiki/FAQ
#sudo apt-get install fonts-powerline

# At last, install YCMD
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

echo
echo
echo "Dotfiles are now installed. Proceed to conquer the universe."

# Install antigen
# http://antigen.sharats.me/
curl -L git.io/antigen > antigen.zsh

chsh -s $(which zsh)

/usr/bin/env zsh
source ~/.zshrc

# less with source-highlighting
sudo mkdir --parents /usr/share/source-highlight/
sudo curl --output /usr/share/source-highlight/src-hilite-lesspipe.sh "https://raw.githubusercontent.com/n0ts/dotfiles/master/dot.source-highlight/src-hilite-lesspipe.sh"
# cambiar!


