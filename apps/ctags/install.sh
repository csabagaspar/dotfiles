#!/usr/bin/env bash

DOTFILES=$HOME/dotfiles
APPS=$HOME/dotfiles/apps

echo "=============================="
echo "Running ctags typescript setup..."
echo "=============================="

if [ -e $HOME/.ctags ]; then
  echo ".ctags already exists... skipping."
else
  echo "Creating symlink for .ctags"
  ln -s $DOTFILES/submodules/typescript-ctags.git/.ctags  $HOME/.ctags
fi
