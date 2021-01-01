#!/usr/bin/env bash

ARCH="$(uname -m)"
RUSTUP_PATH="$HOME/.cargo/bin/rustup"
BREWFILE_PATH="$HOME/.Brewfile"
GIT_REPO_PATH="$HOME/git"
REPO_NAME="dotfiles"

if [[ $ARCH == "arm64" ]]; then
  HOMEBREW_PATH="/opt/homebrew"
elif [[ $ARCH == "x86_64" ]]; then
  HOMEBREW_PATH="/usr/local"
else
  echo "Unsupported processor architecture: only x86_64 and arm64 are supported"
  exit
fi

if [ -f "$RUSTUP_PATH" ]; then
  echo "rustup present"
else
  echo "installing rust:"
  /bin/sh -c "$(curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs)"
fi

if [ -f "$HOMEBREW_PATH/bin/brew" ]; then
  echo "homebrew present"
else
  echo "installing homebrew:"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if [ ! -f "$BREWFILE_PATH" ]; then
  BREWFILE_TMP="/tmp/Brewfile"
  curl -s https://raw.githubusercontent.com/matthewrees/dotfiles/trunk/homebrew/.Brewfile > $BREWFILE_TMP
  PATH=$HOMEBREW_PATH/bin:$PATH brew bundle --file=$BREWFILE_TMP
  rm $BREWFILE_TMP
  mkdir -p "$GIT_REPO_PATH"
  if [ ! -d "$GIT_REPO_PATH/$REPO_NAME/.git" ]; then
    SSH_AUTH_SOCK="$HOMEBREW_PATH/var/run/yubikey-agent.sock" git clone -q git@github.com:matthewrees/dotfiles.git "$GIT_REPO_PATH/$REPO_NAME"
  fi
  cd "$GIT_REPO_PATH/$REPO_NAME"
  rsync --dry-run -avh --no-perms --exclude ".git/" --exclude ".gitignore" --exclude "README.md" --exclude "bootstrap.sh" --exclude ".idea/" --exclude "com.googlecode.iterm2.plist" . ~
else
  brew bundle --global
fi