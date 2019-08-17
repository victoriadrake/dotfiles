#!/bin/bash

./symlink.sh
./aptinstall.sh
./programs.sh
./desktop.sh

# Get all upgrades
sudo apt upgrade -y

# Fun hello
figlet "... and we're back!" | lolcat

