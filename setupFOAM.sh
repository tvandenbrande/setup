#!/bin/bash
# Simple setupFOAM.sh for configuring Ubuntu 12.04 for OPENFOAM. 
sudo apt-get install -y git-core

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
sudo apt-add-repository -y ppa:cassou/emacs
sudo apt-get update
sudo apt-get install -y emacs24 emacs24-el emacs24-common-non-dfsg

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

# Install PyFoam
sudo apt-get install python-numpy
sudo apt-get install subversion
svn co https://svn.code.sf.net/p/openfoam-extend/svn/trunk/Breeder/other/scripting/PyFoam/
cd PyFoam
sudo python setup.py install
cd $HOME

# Install openFOAM
VERS=$(lsb_release -cs)
sudo sh -c "echo deb http://www.openfoam.org/download/ubuntu $VERS main > /etc/apt/sources.list.d/openfoam.list" 
sudo apt-get update
sudo apt-get install openfoam220
sudo apt-get install paraviewopenfoam3120
sudo apt-get install paraview
# todo: user configuration, see http://www.openfoam.org/download/ubuntu.php



