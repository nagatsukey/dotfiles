#!/bin/sh
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.bashrc ~/.bashrc

# install Vim Vundle
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
