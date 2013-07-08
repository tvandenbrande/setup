setup.git
=========
Clone and run this on a new EC2 instance running Ubuntu 12.04.2 LTS to
configure both the machine and your individual development environment as
follows:

```sh
cd $HOME
sudo apt-get install -y git-core
git clone https://github.com/tvandenbrande/setup.git
./setup/setupAWS.sh   
```

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





