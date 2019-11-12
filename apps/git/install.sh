source ~/dotfiles/apps/git/git-completion.bash
source ~/dotfiles/apps/git/git-prompt.sh

export PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
export GIT_PS1_SHOWCOLORHINTS=true

sh ~/dotfiles/apps/git/gitconfig.sh
