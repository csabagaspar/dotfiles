#!/usr/bin/env bash
echo -e "\n=============================================="
echo "Installing exuberant-ctags..."
echo "=============================================="

DOTFILES=$HOME/dotfiles
APPS=$HOME/dotfiles/apps

sudo apt-get update
sudo apt-get install exuberant-ctags

if [ -e $HOME/.ctags ]; then
  echo -e "\t .ctags already exists... skipping."
else
  echo -e "\t Creating symlink for .ctags"
  ln -s $DOTFILES/submodules/typescriptreact-ctags.git/.ctags  $HOME/.ctags
fi
