#!/usr/bin/env bash

installs=$( find -H "$HOME/dotfiles" -maxdepth 3 -name 'install.ubuntu.sh' )
 for file in $installs ; do
     $file
 done
