autoload -Uz compinit && compinit

alias vim="nvim"
alias vi="nvim"
alias ls="exa"
alias cat="bat -p"
alias catn="bat"
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

export HISTSIZE=50000
export SAVEHIST=10000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify

export PATH="$PATH:/usr/local/opt/terraform@0.12/bin:/usr/local/bin:$HOME/.rvm/bin"
export PAGER=less
export EDITOR=nvim
export VISUAL=nvim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
eval "$(starship init zsh)"
