setup.git
=========
Clone and run this on a new EC2 instance running Ubuntu 14.04.2 LTS to
configure both the machine and your individual development environment as
follows, depending on the development env you want to construct:


Basic installation
--------
For fortran90, c++, R and python development. 
```sh
cd $HOME
sudo apt-get install -y git-core
git clone https://github.com/tvandenbrande/setup.git
chmod 777 ./setup/setupBWF.sh
./setup/setupBWF.sh   
```
Following libraries are installed for Python: 
* Numpy 1.8.1
* scipy 0.13.3
* matplotlib 1.3.1
* networkx 1.8.1
* pandas
* numexpr
* Cython
* tables
* spyder 2.2.1


OpenFOAM (with emacs)
--------
For more details on OpenFOAM installation and configuration see: http://www.openfoam.org/download/git.php
Note that the compilation of the OpenFOAM code takes quite a while.

```sh
cd $HOME
sudo apt-get install -y git-core
git clone https://github.com/tvandenbrande/setup.git
./setup/setupFOAM.sh   
```


See also http://github.com/tvandenbrande/dotfiles 






