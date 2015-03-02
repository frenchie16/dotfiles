# dotfiles
This repository contains my dotfiles. It is mostly for my own use so I can keep them synchronized across my machines and keep a history of changes, but if it's useful to you, great!

## Requirements
At least `zsh` and `vim` should be installed.

## Setting up

	git clone --recursive https://github.com/frenchie16/dotfiles.git ~/.dotfiles
	~/.dotfiles/mklinks.zsh

## Updating

	cd ~/.dotfiles
	git pull
	git submodule update --init --recursive

