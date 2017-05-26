#!/bin/bash

tmux new -s main -n workspace
tmux neww  # Creates a 2nd window, in addition to the new session's first window
tmux attach -t main
