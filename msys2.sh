#!/usr/bin/env bash

if test ! $(which pacman); then
  echo "Should install pacman"
else

  echo -e "\n\nInstalling pacman packages..."
  echo "=============================="

  formulas=(
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
