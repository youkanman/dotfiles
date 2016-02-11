#!/bin/bash

VIM_DOT_FILES=( .vimrc .vim )

for file in ${VIM_DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/vim/$file $HOME/$file
done

#GIT_DOT_FILES=( .gitconfig .gitignore )
#
#for file in ${GIT_DOT_FILES[@]}
#do
#  ln -s $HOME/dotfiles/git/$file $HOME/$file
#done

# install neobundle
[ ! -d ~/.vim/bundle ] && mkdir -p ~/.vim/bundle && git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim && vim -c ':NeoBundleInstall'

