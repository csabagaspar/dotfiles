#!/usr/bin/env bash

echo ".files..."
#if [[ ! -d $HOME/.files ]]; then
#  git clone https://github.com/csabagaspar/dotfiles.git $HOME/.files
#else
#  cd $HOME/dotfiles && git pull --rebase
#fi

cd $HOME


echo "Linking dotfile..."
ln -fs dotfiles/vim ~/.vim
ln -fs dotfiles/vim/vimrc  ~/.vimrc
ln -fs dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -fs dotfiles/bash/basrc ~/.bashrc

echo "Git config..."
sh $HOME/dotfiles/git/gitconfig.sh

echo "Done."
