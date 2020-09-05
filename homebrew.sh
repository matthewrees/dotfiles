#!/usr/bin/env bash

PACKAGES=("neovim --HEAD" "zig --HEAD" "starship" "awscli")
CASKS=("font-fira-code-nerd-font" "rectangle" "authy")
TAPS=("homebrew/cask-fonts" "filippo.io/yubikey-agent")
SERVICES=("yubikey-agent")

INSTALLED_PACKAGES=$(brew list --versions)
INSTALLED_CASKS=$(brew cask list)
INSTALLED_TAPS=$(brew tap)
INSTALLED_SERVICES=$(brew services)

for tap in "${TAPS[@]}"; do
	if [[ ${INSTALLED_TAPS} != *"$tap"* ]]; then
		brew tap $tap
	fi
done

for cask in "${CASKS[@]}"; do
	if [[ ${INSTALLED_CASKS} != *"$cask"* ]]; then
		brew cask install $cask
	fi
done

for package in "${PACKAGES[@]}"; do
	temp=$(echo $package | sed 's/--//')
	if [[ ${INSTALLED_PACKAGES} != *"$temp"* ]]; then
		brew install $package
	fi
done

for service in "${SERVICES[@]}"; do
	if [[ ${INSTALLED_SERVICES} != *"$service"* ]]; then
		brew services start $service
	fi
done

