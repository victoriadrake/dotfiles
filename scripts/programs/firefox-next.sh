#!/bin/bash

# Firefox browser
# https://launchpad.net/~mozillateam/+archive/ubuntu/firefox-next
echo "🦊 Installing Firefox"
sudo add-apt-repository ppa:mozillateam/firefox-next -y
sudo apt update
sudo apt install -y firefox

