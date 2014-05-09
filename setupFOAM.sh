#!/bin/bash
# Simple setupFOAM.sh for configuring Ubuntu 12.04 for OPENFOAM. 
sudo apt-get install -y git-core
sudo apt-get install wget

#determine installation folder for OpenFOAM
export FOAM_DIR=$HOME/foldername 
cd $FOAM_DIR

# Clone the latest source code from the git repository
git clone git://github.com/OpenFOAM/OpenFOAM-2.3.x.git
# download third party software and install in in the folder Thirdparty-2.3.x
# install dependencies
sudo apt-get install build-essential flex bison cmake zlib1g-dev qt4-dev-tools libqt4-dev gnuplot libreadline-dev libncurses-dev libxt-dev

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
sudo apt-add-repository -y ppa:cassou/emacs
sudo apt-get update
sudo apt-get install -y emacs24 emacs24-el emacs24-common-non-dfsg

# Install PyFoam (uses numpy)
sudo apt-get install python-numpy
sudo apt-get install subversion
sudo apt-get install libboost-dev libboost-doc
svn co https://svn.code.sf.net/p/openfoam-extend/svn/trunk/Breeder/other/scripting/PyFoam/
cd PyFoam
sudo python setup.py install

# Set Path variables and compile OpenFOAM
export FOAM_INST_DIR=$FOAM_DIR/OpenFOAM
echo "source $FOAM_INST_DIR/OpenFOAM-2.3.x/etc/bashrc" >> $HOME/.bashrc
source $HOME/.bashrc
cd $WM_PROJECT_DIR
./Allwmake

# OpenFOAM is compiled on your local machine, start with the tutorials now



