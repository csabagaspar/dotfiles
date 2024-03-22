#!/usr/bin/env bash
git config --global core.longpaths "true"
git config --global push.default "upstream"
git config --global core.excludesfile "$HOME/.gitignore_global"
git config --global http.postBuffer "157286400"

git config --global alias.listaliases "config --get-regexp alias"

git config --global alias.a "add"
git config --global alias.aa "add ."
git config --global alias.can "commit --amend --no-edit"
git config --global alias.cam "commit --amend -m"

git config --global alias.b "branch"
git config --global alias.co "checkout"
git config --global alias.cb "checkout -b"
git config --global alias.st "status"
git config --global alias.s "status --short --branch"
git config --global alias.c "commit"
git config --global alias.cm "commit -m"
git config --global alias.r "restore"
git config --global alias.rs "restore --staged"

git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.wslog "log --ignore-space-at-eol -p -w -b"

git config --global alias.wsdiff "diff --ignore-space-at-eol -w -b --no-ext-diff"
git config --global alias.sdiff "diff --staged"
git config --global alias.cdiff "diff @~ @"
git config --global alias.unlist "ls-files -v"
git config --global alias.un "update-index --assume-unchanged --"
git config --global alias.nun "update-index --no-assume-unchanged --"

git config --global core.autocrlf "input"

git config --global core.editor "/usr/bin/vim"
git config --global color.ui "true"
git config --global merge.tool "/usr/bin/vimdiff"
git config --global merge.conflictstyle "diff3"
git config --global mergetool.prompt "false"

