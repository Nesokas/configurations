#!/bin/bash
config_path=`pwd`
cd ~
rm -rf .vim .vimrc .profile
ln -s $config_path/.vim .vim
ln -s $config_path/.vimrc .vimrc
ln -s $config_path/.profile .profile
rm -rf ~/.vim/bundle/vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim << EOF
:BundleInstall
EOF
