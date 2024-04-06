#!/usr/bin/env bash
git config --global core.longpaths "true"
git config --global push.default "upstream"
git config --global core.excludesfile "$HOME/.gitignore_global"
git config --global http.postBuffer "157286400"

git config --global core.autocrlf "input"

git config --global core.editor "/usr/bin/vim"
git config --global color.ui "true"
git config --global merge.tool "/usr/bin/vimdiff"
git config --global merge.conflictstyle "diff3"
git config --global mergetool.prompt "false"

