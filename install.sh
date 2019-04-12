#!/usr/bin/env bash

for file in $(ls -a ~/git/dotfiles/ | tail -n +3 | grep -v README.md | grep -v install.sh | grep -v .git$ | grep -v .gitignore)
do
  if [[ ! -e "$HOME/$file" ]]; then
    ln -s "$HOME/git/dotfiles/$file" "$HOME/$file"
  fi
  chmod 700 .gnupg
done
