alias vim=nvim
alias vi=nvim
alias ls=exa
alias cat=bat

alias l='ls -l'
alias ll='ls -la'
alias lt='ls --tree'

alias reload='exec fish'
alias of='open .'

abbr -a gs git status -sbu
abbr -a ga git add
abbr -a gco git checkout
abbr -a gcl git clone
abbr -a gd git diff
abbr -a gp git remote prune origin
abbr -a gcm git commit -m
abbr -a sshr ssh-keygen -f ~/.ssh/known_hosts -R
