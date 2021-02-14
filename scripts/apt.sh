#!/bin/bash

sudo apt update
sudo apt install figlet

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    figlet "Installing: ${1}..."
    sudo apt install -y $1
  else
    figlet "Already installed: ${1}"
  fi
}

# Basics
install wget

# Development
install mysql-server
install redis-server

# Desktop
install gnome-shell-extensions
install gnome-tweaks
