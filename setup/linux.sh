#!/bin/bash

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y neovim tmux zsh bat

DOTFILE_ROOT=$(cd $(dirname $0); cd ..; pwd)

mkdir -p ~/.config/nvim
mkdir -p ~/.local/share/nvim/site/autoload/
mkdir -p ~/.local/bin/

ln -s $DOTFILE_ROOT/.zshrc                 ~/.zshrc
ln -s $DOTFILE_ROOT/tmux/tmux.conf         ~/.tmux.conf
ln -s $DOTFILE_ROOT/nvim/init.vim          ~/.config/nvim/init.vim	 
ln -s $DOTFILE_ROOT/nvim/vim-plug/plug.vim ~/.local/share/nvim/site/autoload/plug.vim	 
ln -s $DOTFILE_ROOT/fzf                    ~/.fzf
ln -s $(which batcat)                      ~/.local/bin/bat

nvim +PlugInstall +qa
~/.fzf/install --no-fish --no-update-rc --completion --key-bindings

