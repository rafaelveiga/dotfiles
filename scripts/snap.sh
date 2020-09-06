function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo snap install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Development
install mysql-workbench-community
install code

# Personal
install spotify
install discord

# Log
install figlet
