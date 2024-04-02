#!/usr/bin/env bash

installs=$( find -H "$HOME/dotfiles" -maxdepth 3 -name 'install.raspberrypi.sh' )
 for file in $installs ; do
     $file
 done
