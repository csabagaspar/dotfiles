VISUAL=vim
EDITOR="$VISUAL"
TERM=xterm-256color

source ~/dotfiles/.git-completion.bash
source ~/dotfiles/.git-prompt.sh
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
export GIT_PS1_SHOWCOLORHINTS=true
