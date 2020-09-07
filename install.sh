#!/usr/bin/env bash

OS_TYPE=$(uname -s)

if [ "$OS_TYPE" = "Darwin" ]; then
  if ! command -v brew >/dev/null 2>&1; then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo "Installing homebrew packages..."
    brew bundle --file "$(pwd -P)/homebrew/.Brewfile"
  else
    brew bundle --global
  fi

  for i in $(ls -d */); do
    stow -t ~ ${i%%/} --ignore=".Brewfile.lock.json"
  done
fi

