#!/bin/sh
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.bashrc ~/.bashrc

# install Neo Vundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
