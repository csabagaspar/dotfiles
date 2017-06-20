#!/usr/bin/env bash

echo "=============================="
echo "Running cygwin setup..."
echo "=============================="

curl -O https://raw.githubusercontent.com/transcode-open/apt-cyg/master/apt-cyg
/usr/bin/install apt-cyg /bin
rm apt-cyg

apt-cyg update tmux
apt-cyg update vim
