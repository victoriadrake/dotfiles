#!/bin/bash

# https://jekyllrb.com/docs/installation/#requirements

sudo apt-get install -y ruby-bundler ruby-full build-essential zlib1g-dev

echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

sudo gem install jekyll bundler
