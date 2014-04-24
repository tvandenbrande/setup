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
(under construction) If you are configuring for OpenFoam:

```sh
cd $HOME
sudo apt-get install -y git-core
git clone https://github.com/tvandenbrande/setup.git
./setup/setupFOAM.sh   
```


See also http://github.com/tvandenbrande/dotfiles 

Usefull documentation on setup can be found here: [Startup Engineering Video Lectures 4a/4b](https://class.coursera.org/startup-001/lecture/index)
for more details.





