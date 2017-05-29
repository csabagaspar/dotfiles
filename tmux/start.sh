#!/bin/bash
tmux new-session -s main \; split-window -v \; detach \;
tmux new-session -s katas \; send-keys 'cd ~/workspace/github/katas/javascript' C-m \; send-keys 'vim' C-m \; split-window -v -p 20 \; send-keys 'cd ~/workspace/github/katas/javascript' C-m \; send-keys 'npm run test:watch' \; detach \;
tmux new-session -s dotfiles \; send-keys 'cd ~/dotfiles' C-m \; send-keys 'vim' C-m \; detach \;
tmux attach -t main
