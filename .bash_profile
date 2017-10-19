if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi
