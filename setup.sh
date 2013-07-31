#!/bin/bash

# Script that will symlink all stuff necessary - overwriting most files
# Will only ADD to the authorized_keys however

# TODO: Make this read all files from the config dir with some error handling
dotfiles="bash_aliases bash_completion bash_profile bashrc hushlogin jsbeautifyrc jshintrc perltidyrc"

for dotfile in $dotfiles
do
    ln -sf "$HOME/.dotfiles/config/$dotfile" "$HOME/.$dotfile"
done
