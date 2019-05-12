#!/bin/bash
#:------------------------------------------------------------------------------
#: Usage: ./ssh-add-f.sh [-g]
#: Purpose: Generate a new SSH key, and optionally copy it to clipboard
#: Parameters:
#:   -g    Copy the ssh-key to clipboard
#: Notes:
#:   - For GitHub go to:
#:   https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/
#: Dependencies:
#:   xclip
#:------------------------------------------------------------------------------

# Create RSA key
ssh-keygen -t rsa -b 4096 -C "fenandos@hotmail.com"
# Asks where to save it; make it default
# Asks a passphrase; write it down

# Add SSH key to the ssh-agent
eval "$(ssh-agent -s)"  # starts the ssh-agent in the back
ssh-add ~/.ssh/id_rsa  # add SSH private key to the ssh-agent


# Copies the contents of the id_rsa.pub file to clipboard
github=0

while getopts 'g' opt; do
    case "$opt" in
        g) github=1 ;;
        *) echo 'error in command line parsing' >&2
           exit 1
    esac
done

if [ "$github" -eq 1 ]; then
    xclip -sel clip < ~/.ssh/id_rsa.pub
fi

