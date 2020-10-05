autoload -Uz compinit && compinit

alias vim="nvim"
alias vi="nvim"
alias ls="exa"
alias cat="bat"
alias catp="cat -p"
alias l="ls -l"
alias ll="ls -la"
alias lt="ls --tree"
alias reload="exec zsh"

alias gs="git status -sbu"
alias ga="git add"
alias gco="git checkout"
alias gcl="git clone"
alias gd="git diff"
alias gp="git remote prune origin"
alias gcm="git commit -m"
alias sshr="ssh-keygen -f ~/.ssh/known_hosts -R"

export PATH="$PATH:/usr/local/opt/terraform@0.12/bin:/usr/local/bin:$HOME/.rvm/bin"
export PAGER=less
export EDITOR=nvim
export VISUAL=nvim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
eval "$(starship init zsh)"
