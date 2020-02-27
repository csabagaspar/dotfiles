#!/usr/bin/env bash

echo "=============================="
echo -e "\n\nPrerequisite"
echo "=============================="
echo -e "\n\ngit"

echo "=============================="
echo -e "\n\nRunning platform specific installs.."
echo "=============================="

if [ "$(uname)" == "Linux" ]; then
    echo -e "\n\nRunning on Ubuntu"
    source ./ubuntu.sh
fi


echo "=============================="
echo "Initializing git submodule(s)"
echo "=============================="
/bin/bash git submodule update --init --recursive


echo "=============================="
echo -e "\nCreating symlinks"
echo "=============================="
DOTFILES=$HOME/dotfiles
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
    target="$HOME/.$( basename $file '.symlink' )"
    if [ -e $target ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $file"
        /bin/bash ln -s $file $target
    fi
done

/bin/bash ~/dotfiles/apps/git/install.sh
/bin/bash  ~/dotfiles/apps/vim/install.sh
/bin/bash  ~/dotfiles/apps/ctags/install.sh

echo "Done."
