#!/usr/bin/env bash

if test ! $(which apt-get); then
  echo "Install apt-get!"
else
  installs=$( find -H "$HOME/dotfiles" -maxdepth 3 -name 'install.ubuntu.sh' )
  for file in $installs ; do
      $file
  done
fi
