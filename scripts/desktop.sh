#!/bin/bash

# GNOME extension to move bar to bottom
sudo apt install -y gnome-tweaks chrome-gnome-shell
git clone https://github.com/home-sweet-gnome/dash-to-panel.git panel
cd panel && make install
cd ..
rm -rf panel
gnome-shell-extension-tool -e dash-to-panel

# Set up the desktop environment
cp ../img/desktop.jpg ~/desktop.jpg
cp ../img/lock.jpg ~/lock.jpg
dconf load /org/gnome/ < ../../settings.dconf
