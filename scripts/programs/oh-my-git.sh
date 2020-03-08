#!/bin/bash

echo "🚩 Installing prompt"

git clone git@github.com:victoriadrake/oh-my-git.git ~/.oh-my-git
echo source ~/.oh-my-git/prompt.sh >> ~/.bashrc

# Copy the awesome fonts to ~/.fonts
cd /tmp
git clone http://github.com/gabrielelana/awesome-terminal-fonts
cd awesome-terminal-fonts
git checkout patching-strategy
mkdir -p ~/.fonts
cp patched/*.ttf ~/.fonts

# update the font-info cache
sudo fc-cache -fv ~/.fonts
