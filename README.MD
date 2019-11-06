# Dotfiles
 * set proxy
Set
 * git config --global core.autocrlf input
before clonning.
## Add submodule
fe: git submodule add https://github.com/leafgarland/typescript-vim.git vim/bundle/typescript-vim.git
## Upgrading all bundled plugins
 * git submodule foreach git pull origin master



 To remove a submodule you need to:

 Delete the relevant section from the .gitmodules file.
 Stage the .gitmodules changes git add .gitmodules
 Delete the relevant section from .git/config.
 Run git rm --cached path_to_submodule (no trailing slash).
 Run rm -rf .git/modules/path_to_submodule (no trailing slash).
 Commit git commit -m "Removed submodule "
 Delete the now untracked submodule files rm -rf path_to_submodule
