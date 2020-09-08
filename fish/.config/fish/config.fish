source ~/.config/fish/alias.fish
source ~/.config/fish/rvm.fish

set fish_greeting
set -x PATH $HOME/.rvm/bin /usr/local/bin $PATH
set -x PAGER less
set -x EDITOR nvim
set -x VISUAL nvim

starship init fish | source
