#!/bin/bash

./apt-install.sh

figlet "Installing Programs" | lolcat
./programs.sh

figlet "Symlinking" | lolcat
./symlink.sh

figlet "Post Install" | lolcat
./post-install.sh

## upgrade all
figlet "Upgrading" | lolcat
sudo apt upgrade -y

## setting oh-my-zsh as default shell
figlet "Setting ZSH as default shell" | lolcat
chsh -s $(which zsh)

## source all
figlet "Sourcing" | lolcat
source ~/.zshrc

## Final message
figlet "All Done!" | lolcat
echo "Don't forget to set your SSH keys" | lolcat
