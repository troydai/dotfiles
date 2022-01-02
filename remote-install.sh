#!/bin/bash

echo "Remote install dotfile / git@troydai.com"

DOT_NAME=.dotfiles
DOT_DIR=$HOME/$DOT_NAME

git clone https://github.com/troydai/dotfiles.git $DOT_DIR --recursive

$DOT_DIR/setup/linux.sh
