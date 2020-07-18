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
install batisteo.vscode-django
install bibhasdn.django-html
install bierner.markdown-preview-github-styles
install byi8220.indented-block-highlighting
install chenxsan.vscode-standardjs
install christian-kohler.npm-intellisense
install cliffordfajardo.highlight-line-vscode
install coenraads.bracket-pair-colorizer
install davidanson.vscode-markdownlint
install eg2.vscode-npm-script
install emmanuelbeziat.vscode-great-icons
install foxundermoon.shell-format
install github.vscode-pull-request-github
install glen-84.sass-lint
install golang.go
install hookyqr.beautify
install joaompinto.vscode-graphviz
install killalau.vscode-liquid-snippets
install liviuschera.noctis
install ms-azuretools.vscode-docker
install ms-python.python
install ms-vscode-remote.remote-containers
install neilding.language-liquid
install redhat.vscode-yaml
install rido3.wordcount
install simonsiefke.svg-preview
install streetsidesoftware.code-spell-checker
install victoriadrake.kabukicho
install vscode-icons-team.vscode-icons
install wayou.vscode-todo-highlight
install yzhang.markdown-all-in-one
install zxh404.vscode-proto3
