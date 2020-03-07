#!/bin/bash

./aptinstall.sh
./programs.sh

# Get all upgrades
sudo apt upgrade -y

# See our bash changes
source ~/.bashrc

# Fun hello
figlet "Hello!" | lolcat
