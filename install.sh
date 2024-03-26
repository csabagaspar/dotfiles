#!/usr/bin/env bash

DOTFILES=$HOME/dotfiles

echo "=============================="
echo "Initializing git submodule(s)..."
echo "=============================="
git submodule update --init --recursive
echo "Done."


echo -e "\n\n=============================="
echo "SYMLINKS"
echo "=============================="
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
    target="$HOME/.$( basename $file '.symlink' )"
    if [ -e $target ]; then
        echo -e "\t ~${target#$HOME} already exists... Skipping."
    else
        echo -e "\tCreating symlink for $file"
        ln -s $file $target
    fi
done
echo "Done."
