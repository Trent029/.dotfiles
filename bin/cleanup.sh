#!/bin/bash

rm -f ~/.vimrc #deletes the vimrc file in the home directory

sed -i 's/source ~\/.dotfiles\/bashrc_custom//g' ~/.bashrc #deletes "source ~/.dotfiles/bashrc_custom" from .bashrc

rm -rf ~/.TRASH #deletes the .TRASH directory in the home directory
