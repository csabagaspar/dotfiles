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
        "$HOME/.vim/bundle/nerdtree:$DOTFILES/submodules/nerdtree.git"
        "$HOME/.vim/bundle/dracula:$DOTFILES/submodules/dracula.git"
        "$HOME/.vim/bundle/airline:$DOTFILES/submodules/vim-airline.git"
        "$HOME/.vim/bundle/airline-themes:$DOTFILES/submodules/vim-airline-themes.git"
        "$HOME/.vim/bundle/editorconfig:$DOTFILES/submodules/editorconfig-vim.git"
        "$HOME/.vim/bundle/ultisnips:$DOTFILES/submodules/ultisnips.git"
        "$HOME/.vim/bundle/emmet:$DOTFILES/submodules/emmet-vim.git"
        "$HOME/.vim/bundle/closetag:$DOTFILES/submodules/vim-closetag.git"
        "$HOME/.vim/bundle/MatchTagAlways:$DOTFILES/submodules/MatchTagAlways.git"
        "$HOME/.vim/bundle/indentLine:$DOTFILES/submodules/indentLine.git"
        "$HOME/.vim/bundle/delimitMate:$DOTFILES/submodules/delimitMate.git"
        "$HOME/.vim/bundle/tmux-navigator:$DOTFILES/submodules/vim-tmux-navigator.git"
        "$HOME/.vim/bundle/tmux-polyglot:$DOTFILES/submodules/vim-polyglot.git"
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
