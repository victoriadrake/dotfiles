#!/bin/bash

# https://code.visualstudio.com/docs/setup/linux
echo "⌨️  Installing VSCode"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code
rm microsoft.gpg
function install {
  name="${1}"
  code --install-extension ${name} --force
}

install arcticicestudio.nord-visual-studio-code
install batisteo.vscode-django
install bibhasdn.django-html
install bierner.markdown-preview-github-styles
install byi8220.indented-block-highlighting
install davidanson.vscode-markdownlint
install foxundermoon.shell-format
install glen-84.sass-lint
install golang.go
install hookyqr.beautify
install joaompinto.vscode-graphviz
install killalau.vscode-liquid-snippets
install ms-python.python
install neilding.language-liquid
install redhat.vscode-yaml
install rido3.wordcount
install simonsiefke.svg-preview
install streetsidesoftware.code-spell-checker
install victoriadrake.kabukicho
install vscode-icons-team.vscode-icons
install yzhang.markdown-all-in-one
