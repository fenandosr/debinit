#!/bin/bash
#:------------------------------------------------------------------------------
#: Usage: ./mkuserhome.sh [-n]
#: Purpose: useful spare time
#: Other purpose: Save some time building the same dirs
#:   (done a lot lately, for an unattainable explication)
#: Parameters:
#:   -n    just print the home directory and the commands to be run
#:------------------------------------------------------------------------------

# dry run: check who's behind HOME
# https://unix.stackexchange.com/questions/433801/add-some-dry-run-option-to-script
dry_run=0

while getopts 'n' opt; do
    case "$opt" in
        n) dry_run=1 ;;
        *) echo 'error in command line parsing' >&2
           exit 1
    esac
done

if [ "$dry_run" -eq 1 ]; then
    echo "The user home directory is: <$HOME>"    
    set -v
    set -n
fi


# User basics
mkdir "$HOME/Apps"
mkdir "$HOME/Desktop"
mkdir "$HOME/Documents"
mkdir "$HOME/Downloads"
mkdir "$HOME/Music"
mkdir "$HOME/Public"
mkdir "$HOME/Templates"
mkdir "$HOME/Videos"
mkdir "$HOME/.config"
mkdir "$HOME/.local"

# Personal most commonly used
mkdir "$HOME/Academy"
mkdir "$HOME/Hubbles"
mkdir "$HOME/Baks"
mkdir "$HOME/UNAM"
mkdir "$HOME/Works"
mkdir "$HOME/.local/bin"
mkdir "$HOME/.local/share/Trash"
mkdir "$HOME/Nebulae"
mkdir "$HOME/ShU"

