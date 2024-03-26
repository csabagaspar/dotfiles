#!/usr/bin/env bash
echo -e "\n=============================================="
echo "Installing bash basic commands and apps..."
echo "=============================================="

sudo apt-get update

formulas=(
 find
 zip
 unzip
 w3m
 ranger
 wget
 curl
 dos2unix
)

for formula in "${formulas[@]}"; do
  if [[ $(sudo apt list --installed) == *"$formula"* ]]; then
    echo -e "\t\t $formula already installed... skipping."
  else
    sudo apt-get install $formula
  fi
done

