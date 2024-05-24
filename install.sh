#!/bin/bash

./apt-install.sh

figlet "Installing Programs" | lolcat
./programs.sh

figlet "Symlinking" | lolcat
./symlink.sh

## upgrade all
figlet "Upgrading" | lolcat
sudo apt upgrade -Y

## setting oh-my-zsh as default shell
figlet "Setting ZSH as default shell" | lolcat
chsh -s $(which zsh)

## source all
figlet "Sourcing" | lolcat
source ~/.zshrc

## Final message
figlet "All Done!" | lolcat