#!/usr/bin/env bash


sudo steamos-readonly disable

#pacman
sudo pacman-key --init # run these two commands if the below doesn't work
sudo pacman-key --populate archlinux

installs=$( find -H "$HOME/dotfiles" -maxdepth 3 -name 'install.steamos.sh' )
 for file in $installs ; do
     $file
 done
