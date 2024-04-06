#!/usr/bin/env bash
echo -e "\n=============================================="
echo "Installing git..."
echo "=============================================="

#sudo apt-get update
#sudo apt-get install git
/bin/bash ~/dotfiles/apps/git/gitconfig.sh
/bin/bash ~/dotfiles/apps/git/gitalias.sh
/bin/bash ~/dotfiles/apps/git/gitconfig.local.sh
