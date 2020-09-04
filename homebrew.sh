#!/usr/bin/env bash

brew tap homebrew/cask-fonts
brew cask install font-fira-code-nerd-font

brew tap filippo.io/yubikey-agent
brew install yubikey-agent
brew services start yubikey-agent

brew install neovim --HEAD
brew install zig --HEAD # https://github.com/ziglang/zig/issues/6087
brew install starship
brew cask install rectangle
