DOTFILES=$HOME/dotfiles
APPS=$HOME/dotfiles/apps

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

