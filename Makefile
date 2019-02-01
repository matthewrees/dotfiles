all: sync

sync:
	rsync -av . ~ --exclude .git --exclude README.md --exclude Makefile
	chmod 700 ~/.gnupg
