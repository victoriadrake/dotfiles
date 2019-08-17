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

# Basics
install vim
install tmux
install git
install curl
install file
install htop
install nmap
install awscli
install openvpn
install chromium-browser

# Image processing
install optipng
install jpegoptim
install gimp

# Fun stuff
install figlet
install lolcat