#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y git vim
sduo apt-get install -y make g++
sudo apt-get install -y python-pip
sudo pip install --user awscli

# Aliases
cat <<SHELL > ~/.bash_aliases
alias be="bundle exec"
SHELL

# Environment variables
cat <<'SHELL' > ~/.bash_env
export PATH="$HOME/.local/bin:$PATH"
SHELL
if ! grep .bash_env ~/.bashrc > /dev/null; then
  echo 'source "$HOME/.bash_env"' >> ~/.bashrc
fi

# Install anyenv
if [ ! -e ~/.anyenv ]; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
  echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(anyenv init -)"' >> ~/.bashrc
fi
$HOME/.anyenv/bin/anyenv install -s rbenv
$HOME/.anyenv/bin/anyenv install -s pyenv
