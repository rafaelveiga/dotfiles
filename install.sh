#!/bin/bash

./symlink.sh
./apt-install.sh
./programs.sh

## upgrade all
sudo apt upgrade -Y

## source all
source ~/.zshrc

## Final message
figlet "All Done!" | lolcat