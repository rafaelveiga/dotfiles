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

# Basics
install zsh
install neovim
install curl

# Warsaw deps
install libnss3-tools

# Cool Stuff
install figlet
install lolcat