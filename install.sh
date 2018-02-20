#!/usr/bin/env bash

echo "Installing dotfiles."

echo "=============================="
echo -e "\n\nRunning platform specific installs.."
echo "=============================="
if [ "$(uname)" == "CYGWIN_NT-6.1" ]; then
    echo -e "\n\nRunning on Cygwin"

    source install/choco.sh
    source install/cygwin.sh

fi
if [ "$(uname)" == "Linux" ]; then
    echo -e "\n\nRunning on Linux"

    source install/linux.sh
fi

echo "=============================="
echo -e "\n\nSet env"
echo "=============================="
MAVEN_OPTS=-Xms256m
M2_REPO=${HOME}/.m2

echo "=============================="
echo "Running git setup..."
echo "=============================="
sh ~/dotfiles/git/gitconfig.sh

echo "=============================="
echo "Initializing git submodule(s)"
echo "=============================="
git submodule update --init --recursive

DOTFILES=$HOME/dotfiles

echo "=============================="
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

echo "=============================="
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

echo "Done."
