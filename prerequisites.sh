#!/usr/bin/env bash
echo -e "\n=============================================="
echo "Installing basic commands and apps..."
echo "=============================================="

sudo apt-get update

formulas=(
 curl
 wget
 git
 zip
 unzip
 dos2unix
 find
 mc
 ranger
 w3m
)

for formula in "${formulas[@]}"; do
  if [[ $(sudo apt list --installed) == *"$formula"* ]]; then
    echo "$formula already installed... skipping."
  else
    sudo apt-get install $formula
  fi
done

