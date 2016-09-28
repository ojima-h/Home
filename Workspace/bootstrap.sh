#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y git vim tmux
sduo apt-get install -y make g++
sudo apt-get install -y python-pip
sudo pip install --user awscli

# Append bashrc
if ! grep /vagrant/config/bashrc ~/.bashrc > /dev/null; then
  echo 'source /vagrant/config/bashrc' >> ~/.bashrc
fi

# Install anyenv
if [ ! -e ~/.anyenv ]; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
  echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(anyenv init -)"' >> ~/.bashrc
fi
$HOME/.anyenv/bin/anyenv install -s rbenv
$HOME/.anyenv/bin/anyenv install -s pyenv

if [ ! -e ~/.tmux.conf ]; then
  ln -s /vagrant/config/tmux.conf ~/.tmux.conf
echo ok
fi
