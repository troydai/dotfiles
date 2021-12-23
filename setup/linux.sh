#!/bin/bash

sudo apt-get update
sudo apt-get install neovim tmux zsh

DOTFILE_ROOT=$(cd $(dirname $0); cd ..; pwd)

mkdir -p ~/.config/nvim
mkdir -p ~/.local/share/nvim/site/autoload/

ln -s $DOTFILE_ROOT/.zshrc					~/.zshrc
ln -s $DOTFILE_ROOT/tmux/tmux.conf			~/.tmux.conf
ln -s $DOTFILE_ROOT/nvim/init.vim			~/.config/nvim/init.vim	 
ln -s $DOTFILE_ROOT/nvim/vim-plug/plug.vim  ~/.local/share/nvim/site/autoload/plug.vim	 
ln -s $DOTFILE_ROOT/fzf						~/.fzf

nvim +PlugInstall +qa
~/.fzf/install
