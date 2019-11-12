#!/usr/bin/env bash

echo "Installing dotfiles with bash"

echo "=============================="
echo -e "\n\nRunning platform specific installs.."
echo "=============================="
if [ "$(uname)" == "MSYS_NT-10.0-18362" ]; then
    echo -e "\n\nRunning on Msys2"

   # source install/msys2.sh

fi

if [ "$(uname)" == "Linux" ]; then
    echo -e "\n\nRunning on Ubuntu"

    source install/ubuntu.sh
fi


echo "=============================="
echo "Running git setup..."
echo "=============================="
#sh ~/dotfiles/apps/git/gitconfig.sh

echo "=============================="
echo "Initializing git submodule(s)"
echo "=============================="
git submodule update --init --recursive

DOTFILES=$HOME/dotfiles
APPS=$HOME/dotfiles/apps

echo "=============================="
echo -e "\nCreating symlinks"
echo "=============================="
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
echo -e "\n\nCreating vim symlinks"
echo "=============================="
VIMFILES=( "$HOME/.vim:$APPS/vim"
        "$HOME/.vimrc:$APPS/vim/vimrc"
        "$HOME/.vim/autoload/pathogen.vim:$DOTFILES/submodules/vim-pathogen.git/autoload/pathogen.vim"
        "$HOME/.vim/bundle/nerdtree.git:$DOTFILES/submodules/nerdtree.git"
      )

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

echo "Done."
