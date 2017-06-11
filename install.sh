#!/usr/bin/env bash

echo "Installing dotfiles."

echo "=============================="
echo "Initializing submodule(s)"
git submodule update --init --recursive

DOTFILES=$HOME/dotfiles

echo -e "\nCreating symlinks"
echo "=============================="
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
    target="$HOME/.$( basename $file '.symlink' )"
    if [ -e $target ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $file"
        ln -s $file $target
    fi
done
echo -e "\n\nCreating vim symlinks"
echo "=============================="
VIMFILES=( "$HOME/.vim:$DOTFILES/vim"
        "$HOME/.vimrc:$DOTFILES/vim/vimrc" )

for file in "${VIMFILES[@]}"; do
    KEY=${file%%:*}
    VALUE=${file#*:}
    if [ -e ${KEY} ]; then
        echo "${KEY} already exists... skipping."
    else
        echo "Creating symlink for $KEY"
        ln -s ${VALUE} ${KEY}
    fi
done


echo "=============================="
echo "Running git setup..."
sh ~/dotfiles/git/gitconfig.sh

echo "Done."
