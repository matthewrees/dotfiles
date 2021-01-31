autoload -U colors && colors
autoload -Uz compinit && compinit
_comp_options+=(globdots)

setopt AUTO_CD
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt EXTENDED_HISTORY
setopt EXTENDED_GLOB
setopt HIST_EXPIRE_DUPS_FIRST
setopt NO_CASE_GLOB
setopt HIST_VERIFY
setopt SHARE_HISTORY
setopt PUSHD_IGNORE_DUPS
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END
setopt PROMPT_SUBST
unsetopt MENU_COMPLETE
setopt AUTO_MENU

ARCH="$(uname -m)"

alias l="ls -lah"
alias reload="source $HOME/.zshrc"
alias sshr="ssh-keygen -f ~/.ssh/known_hosts -R"

alias gs="git status -sbu"
alias ga="git add"
alias gco="git checkout"
alias gcl="git clone"
alias gd="git diff"
alias gp="git remote prune origin"
alias gcm="git commit -m"

export HISTFILE=$HOME/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export PAGER=less
export CLICOLOR=1

if [[ $ARCH == "arm64" ]]; then
  export SSH_AUTH_SOCK="/opt/homebrew/var/run/yubikey-agent.sock"
  export PATH="/opt/homebrew/bin:$PATH"
elif [[ $ARCH == "x86_64" ]]; then
  export SSH_AUTH_SOCK="/usr/local/var/run/yubikey-agent.sock"
  export PATH="/usr/local/bin:$PATH"
fi

export PATH="$HOME/.cargo/bin:$PATH"

eval "$(starship init zsh)"
