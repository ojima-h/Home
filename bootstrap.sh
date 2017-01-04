#!/bin/bash

set -eu

WORKDIR=$HOME/Workspace
mkdir -p $WORKDIR

# Install Homebrew
if ! which brew > /dev/null
then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Clone Home.git
if [ ! -d $WORKDIR/Home ]
then
  git clone git@github.com:ojima-h/Home.git $WORKDIR/Home
fi

# Install ansible
if [ ! -x /usr/local/bin/ansible ]
then
  sudo easy_install pip
  sudo pip install ansible
fi
