#!/bin/bash

# Script that will symlink all stuff necessary - overwriting most files
# Will only ADD to the authorized_keys however

# You MUST clone the repo into your homedir, and call it ".dotfiles"

# Add authorized_keys
cat "$HOME/.dotfiles/config/ssh/authorized_keys" >> "$HOME/.ssh/authorized_keys"

# TODO: Make this read all files from the config dir with some error handling
dotfiles="bash_aliases bash_completion bash_profile bashrc jsbeautifyrc jshintrc perltidyrc"

for dotfile in $dotfiles
do
    ln -sf "$HOME/.dotfiles/config/$dotfile" "$HOME/.$dotfile"
done
