#!/bin/bash

./symlink.sh
./apt-install.sh

figlet "Installing Programs" | lolcat
./programs.sh

## upgrade all
figlet "Upgrading" | lolcat
sudo apt upgrade -Y

## source all
figlet "Sourcing" | lolcat
source ~/.zshrc

## Final message
figlet "All Done!" | lolcat