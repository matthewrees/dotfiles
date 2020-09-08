source ~/.config/fish/alias.fish

set fish_greeting
set -x PATH /usr/local/bin $PATH
set -x PAGER less
set -x EDITOR nvim
set -x VISUAL nvim

starship init fish | source
