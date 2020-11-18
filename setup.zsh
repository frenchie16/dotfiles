#!/usr/bin/env zsh
setopt EXTENDED_GLOB

for file in $0:A:h/dotfiles/*; do
	echo "Linking ${file} at ${HOME}/.${file:t}"
	ln -sfn "${file}" "${HOME}/.${file:t}"
done

# set up zsh dotfiles from prezto
ln -sfn $0:A:h/zprezto "${HOME}/.zprezto"
for file in "${HOME}"/.zprezto/runcoms/^README.md(.N); do
	echo "Linking ${file} at ${HOME}/.${file:t}"
	ln -sfn "$file" "${HOME}/.${file:t}"
done

# install vim pathogen
echo "Installing Vim Pathogen in ${HOME}/.vim"
mkdir -p "${HOME}/.vim"
ln -sfn $0:A:h/vim-pathogen/autoload "${HOME}/.vim/autoload"
ln -sfn $0:A:h/vim-bundle "${HOME}/.vim/bundle"

# macOS specific stuff
if [ "$(uname)" = "Darwin" ]; then
	# install terminal theme
	echo "Opening Terminal.app theme"
	open $0:A:h/Solarized\ Dark.terminal
fi
echo "Done"
