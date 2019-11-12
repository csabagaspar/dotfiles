#!/usr/bin/env bash

echo "=============================="
echo -e "\n\nRunning platform specific installs.."
echo "=============================="
if [ "$(uname)" == "MSYS_NT-10.0-18362" ]; then
    echo -e "\n\nRunning on Msys2"
    #source installs/msys2.sh
    #source installs/msys2.env
fi

if [ "$(uname)" == "Linux" ]; then
    echo -e "\n\nRunning on Ubuntu"
    source installs/ubuntu.sh
    source installs/ubuntu.env
fi


echo "=============================="
echo "Initializing  submodule(s)"
echo "=============================="
git submodule update --init --recursive




echo "=============================="
echo -e "\nCreating symlinks"
echo "=============================="
APPS=$HOME/dotfiles/apps
linkables=$( find -H "$APPS" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
    target="$HOME/.$( basename $file '.symlink' )"
    if [ -e $target ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $file"
        ln -s $file $target
    fi
done

echo "=============================="
echo "Running git setup..."
echo "=============================="
sh ~/dotfiles/apps/git/install.sh
echo "=============================="
echo "Running vim setup..."
echo "=============================="
sh ~/dotfiles/apps/vim/install.sh

echo "Done."
