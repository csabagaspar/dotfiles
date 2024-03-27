#!/usr/bin/env bash

installs=$( find -H "$HOME/dotfiles" -maxdepth 3 -name 'install.steamos.sh' )
 for file in $installs ; do
     $file
 done
