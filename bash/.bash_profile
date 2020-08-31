#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\[dev:\[\033[33;1m\]\[${PWD/*\//}#\]\[\033[m\]\[$(tput sgr0)\] "

git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

HOST='\[\033[02;36m\]\h'; 
HOST=' '$HOST
TIME='\[\033[01;31m\]\t \[\033[01;32m\]'
#LOCATION=' \[\033[01;34m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
LOCATION=' \[\033[01;33m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
BRANCH=' \[\033[00;33m\]$(git_branch)\[\033[00m\]\n\$ '
export PS1=$TIME$USER$HOST$LOCATION$BRANCH
#export PS1=$TIME$LOCATION$BRANCH


#export PS1="\u@\h\h:\W\[$(tput sgr0)\]"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH=~/bin:$PATH
alias githere='open -a SourceTree ./'
alias pshere='open -a PhpStorm ./'

