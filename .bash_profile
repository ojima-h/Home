export PS1='\[\033[01;32m\]\u@localhost\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
