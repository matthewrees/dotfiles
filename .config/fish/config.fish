set -x GPG_TTY (tty)
set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
gpg-connect-agent updatestartuptty /bye > /dev/null 2>&1

set -x VAGRANT_DEFAULT_PROVIDER libvirt
