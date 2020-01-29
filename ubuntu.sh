#!/usr/bin/env bash

if test ! $(which apt-get); then
  echo "Install apt-get!"
else

  echo -e "\n\nInstalling apt-get packages..."
  echo "=============================="

  /bin/bash sudo apt-get update


  formulas=(
  zip
  unzip
  tmux
  vim
  vim-gtk
  w3m
  ranger
  wget
  curl
  ctags
  fzf
  dos2unix
  )

  for formula in "${formulas[@]}"; do
    if [[ $(sudo apt list --installed) == *"$formula"* ]]; then
      echo "$formula already installed... skipping."
    else
      /bin/bash sudo apt-get install $formula
    fi
  done

  echo -e "\n\nInstalling non apt packages..."
  echo "=============================="

  /bin/bash sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
  /bin/bash sudo nvm install 10.12.0 64
  /bin/bash sudo apt-get install --no-install-recommends yarn
  #fzf manual install

fi
