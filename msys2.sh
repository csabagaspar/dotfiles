#!/usr/bin/env bash

echo "Install node and npm"
echo "Install golanguage"

if test ! $(which pacman); then
  echo "Should install pacman"
else

  echo -e "\n\nInstalling pacman packages..."
  echo "=============================="

  formulas=(
  zip
  unzip
  python
  vim
  tmux
  ctags
  )

  for formula in "${formulas[@]}"; do
    if [[ $(pacman -Qk) == *"$formula"* ]]; then
      echo "$formula already installed... skipping."
    else
      pacman -S $formula
    fi
  done
fi


