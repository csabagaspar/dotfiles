#!/usr/bin/env bash

if test ! $(which scoop); then
  echo "Please install scoop in PowerShell: Invoke-Expression (New-Object :waSystem.Net.WebClient).DownloadString('https://get.scoop.sh')"
  exit 1
else

  echo -e "\n\nInstalling scoop packages..."
  echo "=============================="

  formulas=(
  nodejs
  'python --version 2.7.6'
  )

  for formula in "${formulas[@]}"; do
    if [[ $(choco list -localonly) == *"$formula"* ]]; then
      echo "$formula already installed... skipping."
    else
      choco install -y $formula
    fi
  done
fi
