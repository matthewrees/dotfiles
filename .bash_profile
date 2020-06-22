HISTFILE=~/.bash_history
HISTSIZE=-1
HISTCONTROL=ignoreboth

export PAGER=less
export EDITOR=nvim
export VISUAL=nvim

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

alias tsh='SSH_AUTH_SOCK= tsh'
alias ls='ls -Galh'
alias vi='nvim'
alias gs='git status'
alias gsu='git status --untracked'
alias gco='git checkout'
alias ga='git add'
alias gd='git diff'
alias gp='git remote prune origin'

gc() { git commit -m "$*"; }
sshr() { ssh-keygen -R "$1" -f ~/.ssh/known_hosts; }

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"
