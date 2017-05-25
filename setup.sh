#!/usr/bin/env bash

echo ".files..."
#if [[ ! -d $HOME/.files ]]; then
#  git clone https://github.com/csabagaspar/dotfiles.git $HOME/.files
#else
#  cd $HOME/dotfiles && git pull --rebase
#fi

cd $HOME


echo "Linking dotfile..."
ln -s dotfiles/vim ~/.vim
ln -fs dotfiles/vim/vimrc  ~/.vimrc
ln -fs dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -fs dotfiles/bash/bashrc ~/.bashrc
ln -fs dotfiles/tern/.tern-project ~/.tern-project
ln -fs dotfiles/curl/.curlrc ~/.curlrc

echo "Git config..."
sh ~/dotfiles/git/gitconfig.sh

echo "Done."
