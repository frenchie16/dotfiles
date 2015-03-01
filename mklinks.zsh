#!/usr/bin/env zsh
setopt EXTENDED_GLOB

# set up zsh dotfiles from prezto
ln -s $0:A:h/zprezto "${HOME}/.zprezto"
for rcfile in "${HOME}"/.zprezto/runcoms/^README.md(.N); do
	ln -s "$rcfile" "${HOME}/.${rcfile:t}"
done

# set up other dotfiles
for rcfile in $0:A:h/^$0:t(.); do
	ln -s "$rcfile" "${HOME}/.${rcfile:t}"
done
