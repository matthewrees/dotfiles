# settings for yubikey
set -x GPG_TTY (tty)
set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
gpg-connect-agent updatestartuptty /bye > /dev/null 2>&1

# include home bin path
set -x PATH $PATH ~/.local/bin
