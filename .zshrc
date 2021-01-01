autoload -Uz compinit && compinit

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

export PAGER=less

ARCH="$(uname -m)"
if [[ $ARCH == "arm64" ]]; then
  export SSH_AUTH_SOCK="/opt/homebrew/var/run/yubikey-agent.sock"
elif [[ $ARCH == "x86_64" ]]; then
  export SSH_AUTH_SOCK="/usr/local/var/run/yubikey-agent.sock"
fi