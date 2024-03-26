#!/usr/bin/env bash
echo -e "\n=============================================="
echo "Installing cdemu..."
echo "=============================================="

repositories=(
  ppa:cdemu/ppa
)

for repository in "${repositories[@]}"; do
  sudo add-apt-repository $repository
done

sudo apt-get update

formulas=(
 cdemu-daemon
 cdemu-client
)

for formula in "${formulas[@]}"; do
  if [[ $(sudo apt list --installed) == *"$formula"* ]]; then
    echo -e "\t\t $formula already installed... skipping."
  else
    sudo apt-get install $formula
  fi
done

