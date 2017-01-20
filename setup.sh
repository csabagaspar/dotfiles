#!/usr/bin/env bash

echo ".files..."
#if [[ ! -d $HOME/.files ]]; then
#  git clone https://github.com/csabagaspar/dotfiles.git $HOME/.files
#else
#  cd $HOME/dotfiles && git pull --rebase
#fi

cd $HOME

echo "Linking dotfile..."
ln -fs dotfiles/.vimrc
ln -fs dotfiles/.tmux.conf
ln -fs dotfiles/.bashrc

echo "Git config..."
sh $HOME/dotfiles/gitconfig.sh

echo "Done."
