#!/usr/bin/env bash
echo -e "\n=============================================="
echo "Installing cdemu..."
echo "=============================================="

sudo pacman -S linux-neptune-61-headers libmirage libao cdemu-client cdemu-daemon vhba-module-dkms

sudo modprobe vhba

