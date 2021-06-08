##
# Nave
#
# @file
# @version 0.1
PREFIX    ?= ${HOME}/.local

install-symlink:
	ln -sf ${PWD}/nave.sh $(PREFIX)/bin/nave

# end
