#!/bin/bash

sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Development
install vim
install mysql-server
install mysql-workbench

# Personal
install spotify-client

# Desktop
install gnome-shell-extensions

# Log
install figlet
