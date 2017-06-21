#!/bin/sh

if test ! $(which choco); then
    echo "Please install choco"
else

echo -e "\n\nInstalling choco packages..."
echo "=============================="

formulas=(
    jdk8
    git
    gradle
    maven
    nvm
)

for formula in "${formulas[@]}"; do
    if [[ $(choco list -localonly) == *"$formula"* ]]; then
        echo "$formula already installed... skipping."
    else
        choco install -y $formula
    fi
done
fi
