#!/usr/bin/env bash
echo -e "\n=============================================="
echo "Installing cdemu..."
echo "=============================================="

sudo steamos-readonly disable

pacman-key --init # run these two commands if the below doesn't work
pacman-key --populate

sudo pacman -S linux-neptune-61-headers libmirage libao cdemu-client cdemu-daemon vhba-module-dkms

sudo modprobe vhba

