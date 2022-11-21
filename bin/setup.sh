#!/bin/bash

if [ uname != "Linux" ]#checks to see if the operating system is linux
then
        echo "Error. Operating system not Linux." >> linuxsetup.log
        #if not it sends an error message to linuxsetup.log and exits the terminal
        exit
fi

if [ -f ~/.vimrc ]#checks to see if the .vimrc file exists
then
        move ~/.vimrc ~/.bup_vimrc
        #if so it renames it to .bup_vimrc and sends a log of this to linuxsetup.log
        echo "The .vimrc file was changed to .bup_vimrc" >> linuxsetup.log
fi

cp vimrc ~/.vimrc

mkdir ~/.TRASH

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

