#!/bin/bash

echo "Adding Symlinks"
./symlink.sh

echo "apt installs"
./aptinstall.sh

figlet "Programs"
./programs.sh
#./desktop.sh

# Get all upgrades
figlet "Upgrades"
sudo apt upgrade -y

# Source bashrc 
figlet "Sourcing .bashrc"
source ~/.bashrc

figlet "done!"

