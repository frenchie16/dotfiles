#!/usr/bin/env zsh
setopt EXTENDED_GLOB

# set up zsh dotfiles from prezto
ln -sfn $0:A:h/zprezto "${HOME}/.zprezto"
for rcfile in "${HOME}"/.zprezto/runcoms/^README.md(.N); do
	ln -sfn "$rcfile" "${HOME}/.${rcfile:t}"
done

# install vim pathogen
mkdir -p "${HOME}/.vim"
ln -sfn $0:A:h/vim-pathogen/autoload "${HOME}/.vim/autoload"
ln -sfn $0:A:h/vim-bundle "${HOME}/.vim/bundle"

# set up other dotfiles
for rcfile in $0:A:h/^$0:t(.); do
	ln -sfn "$rcfile" "${HOME}/.${rcfile:t}"
done
