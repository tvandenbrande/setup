#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 for HAMFEM.

# Install nvm: node-version manager
# https://github.com/creationix/nvm
sudo apt-get install -y git-core

# Install fortran90 compilers
# installed with ubuntu 12.04, more info on http://manpages.ubuntu.com/manpages/precise/man1/arm-linux-gnueabi-gfortran-4.4.1.html

# Add Bwfpool drive
# more information can be found by asking Thijs Van den Brande

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
sudo apt-add-repository -y ppa:cassou/emacs
sudo apt-get update
sudo apt-get install -y emacs24 emacs24-el emacs24-common-non-dfsg

#install geany, a visual editor, similar to notepad++ if user doesn't want to work with emacs. Geany comes with a ubuntu install
sudo apt-get install geany

# git pull and install dotfiles as well
cd $HOME
if [ -d ./dotfiles/ ]; then
mv dotfiles dotfiles.old
fi
if [ -d .emacs.d/ ]; then
mv .emacs.d .emacs.d~
fi
git clone https://github.com/tvandenbrande/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
ln -sf dotfiles/.emacs.d .
