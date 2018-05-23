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
  wget
  curl
  )

  for formula in "${formulas[@]}"; do
    if [[ $(sudo apt list --installed) == *"$formula"* ]]; then
      echo "$formula already installed... skipping."
    else
      sudo apt-get install $formula
    fi
  done

  sudo curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
  sudo apt-get install --no-install-recommends yarn

  curl -o- "https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh" | bash
  curl -s "https://get.sdkman.io" | bash
fi
