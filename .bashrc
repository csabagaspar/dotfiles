VISUAL=vim
EDITOR="$VISUAL"
TERM=xterm-256color
source ~/.files/.git-completion.bash
source ~/.files/.git-prompt.sh

PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
export GIT_PS1_SHOWCOLORHINTS=true
