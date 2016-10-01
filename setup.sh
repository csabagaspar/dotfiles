#!/usr/bin/env bash

echo ".files..."
if [[ ! -d $HOME/.files ]]; then
  git clone https://github.com/csabagaspar/.files.git $HOME/.files
else
  cd $HOME/.files && git pull --rebase
fi

cd $HOME

echo "Linking dotfile..."
ln -fs .files/.vimrc
ln -fs .files/.tmux.conf
ln -fs .files/.bashrc

echo "Git config..."
sh $HOME/.files/gitconfig.sh

echo "Done."
