#!/bin/bash

echo "Installing VIM bundle plugin manager"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing plugins from .vimrc"
vim +PluginInstall +qall