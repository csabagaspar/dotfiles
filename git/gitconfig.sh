git config --global user.name "csabagaspar"
git config --global user.email "gaspar.csaba@gmail.com"
git config --global core.longpaths "true"
git config --global push.default "upstream"
git config --global core.excludesfile "$HOME/.gitignore_global"

git config --global alias.a "add"
git config --global alias.aa "add ."
git config --global alias.b "branch"
git config --global alias.co "checkout"
git config --global alias.cb "checkout -b"
git config --global alias.st "status"
git config --global alias.s "status --short --branch"
git config --global alias.c "commit"
git config --global alias.cm "commit -m"
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset' --abbrev-commit --date=relative | tail -n 10"
git config --global alias.wslog "log --ignore-space-at-eol -p -w -b"
git config --global alias.wsdiff "diff --ignore-space-at-eol -w -b --no-ext-diff"
git config --global core.autocrlf "input"

git config --global core.editor "C:/cygwin64/usr/local/bin/vim"
git config --global merge.tool "vimdiff"
git config --global merge.conflictstyle "diff3"
git config --global mergetool.prompt "false"

