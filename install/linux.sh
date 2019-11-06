#!/usr/bin/env bash

if test ! $(which apt-get); then
  echo "Install apt-get!"
else

  echo -e "\n\nInstalling apt-get packages..."
  echo "=============================="

  sudo apt-get update


  formulas=(
  zip
  unzip
  tmux
  vim
  w3m
  ranger
  wget
  curl
  ctags
  )

  for formula in "${formulas[@]}"; do
    if [[ $(sudo apt list --installed) == *"$formula"* ]]; then
      echo "$formula already installed... skipping."
    else
      sudo apt-get install $formula
    fi
  done

  sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
  sudo nvm install 10.12.0 64
  sudo apt-get install --no-install-recommends yarn

fi
