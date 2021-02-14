#!/bin/bash

# Symlink all dotfiles
echo "Adding Symlinks"
./symlink.sh

echo "apt installs"
./apt.sh

figlet "Programs"
./programs.sh

# Get all upgrades & clean up
figlet "Upgrades"
sudo apt upgrade -y
sudo apt autoremove -y

# Source bashrc
figlet "Sourcing .bashrc"
source ~/.bashrc

figlet "done!"

