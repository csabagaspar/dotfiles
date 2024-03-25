#!/usr/bin/env bash

DOTFILES=$HOME/dotfiles
APPS=$HOME/dotfiles/apps

echo -e "\t=============================="
echo -e "\tInstall ctags typescript setup..."
echo -e "\t=============================="

if [ -e $HOME/.ctags ]; then
  echo -e "\t .ctags already exists... skipping."
else
  echo -e "\t Creating symlink for .ctags"
  ln -s $DOTFILES/submodules/typescriptreact-ctags.git/.ctags  $HOME/.ctags
fi
