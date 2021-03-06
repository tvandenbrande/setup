#!/bin/bash
# Simple setup.sh for configuring Ubuntu 14.04 LTS for HAMFEM.

# Install (normally already ok because this file comes from git)
sudo apt-get install -y git-core
# Install wget to download dependencies from links
sudo apt-get install -y wget
sudo apt-get update

# Install fortran90 compilers and libraries for Hamfem
# installed with ubuntu 12.04, more info on http://manpages.ubuntu.com/manpages/precise/man1/arm-linux-gnueabi-gfortran-4.4.1.html
# more info on the libraries: http://www.math.utah.edu/software/lapack.html
sudo apt-get install -y gfortran
sudo apt-get install -y libblas-dev libatlas-dev liblapack-dev

# install R studio
sudo apt-get install -y r-base-dev
sudo apt-get install -y libjpeg62
sudo apt-get install -y wget
wget http://download1.rstudio.org/rstudio-0.98.501-amd64.deb
sudo dpkg -i rstudio-0.98.501-amd64.deb
rm -rf rstudio-0.98.501-amd64.deb

# install Python and packages
# add these packages: numpy 1.8.1 | scipy 0.13.3 | matplotlib 1.3.1 | networkx 1.8.1 | spyder 2.2.1
# python 2.7.6 comes with the instalation of Ubunu 14.04 LTS
sudo apt-get install -y python-numpy
sudo apt-get install -y python-scipy
sudo apt-get install -y python-matplotlib
sudo apt-get install -y python-pip
sudo pip install networkx
sudo pip install pandas
sudo pip install numexpr
sudo pip install Cython
sudo apt-get install -y libhdf5-mpich-dev
sudo pip install tables
sudo apt-get install spyder

# Install emacs24 and Geany: for adjusting textfiles 
# emacs is a command line editor, geany a visual editor similar to notepad++
# https://launchpad.net/~cassou/+archive/emacs
sudo apt-add-repository -y ppa:cassou/emacs
sudo apt-get update
sudo apt-get install -y emacs24 emacs24-el emacs24-common-non-dfsg
sudo apt-get install geany

# Install teamviewer
wget http://download.teamviewer.com/download/teamviewer_linux.deb
sudo dpkg -i teamviewer_linux.deb
rm -rf teamviewer_linux.deb


