HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE
PAGER=less
EDITOR=nvim
#VISUAL=nvim
LANG=en_US.UTF-8
export LC_ALL=C
export LC_CTYPE=C
#bindkey -e

zstyle :compinstall filename '/Users/matthewrees/.zshrc'
autoload -Uz compinit && compinit

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

export PATH="$PATH:$HOME/.rvm/bin"

