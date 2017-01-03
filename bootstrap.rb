#!/bin/bash

mkdir -p ~/Workspace

# Install Homebrew
if ! which brew > /dev/null
then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Clone Home.git
if [ ! -d ~/Workspace/Home ]
then
  git clone git@github.com:ojima-h/Home.git ~/Workspace/Home
fi

# Install anyenv 
if [ ! -d ~/.anyenv ]
then
  git clone https://github.com/riywo/anyenv ~/.anyenv
  echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bash_profile
  echo 'eval "$(anyenv init -)"' >> ~/.bash_profile
fi

# Install Python
bash -lc 'anyenv install pyenv -p'
bash -lc 'pyenv install 3.5.2 -p'
cd Workspace && pip local 3.5.2

# Install ansible
bash -lc 'PYENV_VERSION=3.5.2 pip install ansible'
