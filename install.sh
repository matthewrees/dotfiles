#!/usr/bin/env bash

DOTFILES_ROOT=$(pwd -P)

for file in $(ls -a $DOTFILES_ROOT | tail -n +3 | grep -v README.md | grep -v install.sh | grep -v .git$ | grep -v .gitignore | grep -v install.brew)
do
	if [[ ! -e "$HOME/$file" ]]
	then
		ln -s "$HOME/git/dotfiles/$file" "$HOME/$file"
	else
		echo "Could not link $HOME/git/dotfiles/$file as it already exists"
	fi

	chmod 700 .gnupg
done
