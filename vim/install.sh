# Script for installing vundle, the vim package manager

vundleDir=~/.vim/bundle/Vundle.vim

if [ ! -d "$vundleDir" ]
then
    git clone https://github.com/VundleVim/Vundle.vim.git $vundleDir
fi