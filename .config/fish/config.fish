# settings for yubikey
set -x GPG_TTY (tty)
set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

# include home bin path
set -x PATH $PATH ~/.local/bin

