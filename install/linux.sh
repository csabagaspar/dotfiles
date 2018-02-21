
#!/usr/bin/env bash

if test ! $(which apt-get); then
  echo "Install apt-get!"
else

  echo -e "\n\nInstalling apt-get packages..."
  echo "=============================="

  formulas=(
  tmux
  vim
  wget
  curl
  oracle-java9-installer
  )

  for formula in "${formulas[@]}"; do
    if [[ $(apt list --installed) == *"$formula"* ]]; then
      echo "$formula already installed... skipping."
    else
      apt-get install $formula
    fi
  done
fi
