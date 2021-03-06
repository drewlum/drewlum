#!/bin/bash

if [ $(uname) == 'Darwin' ]; then
  alias ll='ls -al'
  alias l.='ls -d .*'
  alias ls='ls'
else
  alias egrep='egrep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias grep='grep --color=auto'
  alias l.='ls -d .* --color=auto'
  alias ll='ls -la --color=auto'
  alias ls='ls --color=auto'
  alias xterm='xterm -bg black -fg white'
fi

#### Teza ###
alias sr='ssh -l root -i ${HOME}/.ssh/root/id_rsa'
alias sr2='ssh -l root -i ${HOME}/.ssh/root/id_rsa_new'
alias sw='ssh -l admin@$*'
#### End Teza ####
alias xterm='xterm -bg black -fg white'
alias cmaked='cmake -DCMAKE_BUILD_TYPE=Debug -Dbuild_tests=True -G"${UNIX_MAKE}" $*'
alias cmaker='cmake -DCMAKE_BUILD_TYPE=Release -G"${UNIX_MAKE}" $*'
alias cp='cp -i'
alias fping='sudo fping -l -e'
alias gcm='git checkout master '
alias gd='git diff '
alias gss='git status '
alias gup='git up; git push'
alias less='less -R'
alias llr='ls -alr'
alias llrt='ls -alrt $*'
alias lll='ls -al | grep ^l'
alias lld='ls -al | grep ^d'
alias makev='make VERBOSE=1'
alias mkc='make clean && make'
alias mv='mv -i'
alias p='python'
alias ping='ping -n'
alias rm='rm -i'
alias thrus='dict -d moby-thesaurus'
alias vi='vim'
alias make8='make -j8'
