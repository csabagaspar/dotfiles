#!/usr/bin/env bash

if test ! $(which apt-cyg); then
  echo "Installing apt-cyg."
  curl -O https://raw.githubusercontent.com/transcode-open/apt-cyg/master/apt-cyg
  /usr/bin/install apt-cyg /bin
  rm apt-cyg
else

  echo -e "\n\nInstalling apt-cyg packages..."
  echo "=============================="

  formulas=(
  tmux
  vim
  wget
  curl
  )

  for formula in "${formulas[@]}"; do
    if [[ $(apt-cyg list) == *"$formula"* ]]; then
      echo "$formula already installed... skipping."
    else
      apt-cyg install $formula
    fi
  done
fi
