#.bash_profile

if [ $(uname) == "Darwin" ];then
    export PATH="/Users/drew/teza-conda/bin:${HOME}/opt/bin:${HOME}/opt:${HOME}/git/drewlum/ShellScripts:${PATH}"

else #Assuming Linux

     export CODEBLOCKS="CodeBlocks - Unix Makefiles"
     export ECLIPSE="Eclipse CDT4 - Unix Makefiles"
     export UNIX_MAKE="Unix Makefiles"
     export INTEL_LICENSE_FILE=${HOME}/.intel/lic/
     export JAVA_HOME=/usr/lib/jvm/java-9-oracle
     export WCOLL=${HOME}/.pdsh.list

     export PATH="${HOME}/anaconda2/bin:${PATH}"
#     export PATH="${HOME}/anaconda3/bin:${PATH}"
     export PATH=${HOME}/bin:${HOME}/opt/Xilinx/Vivado/2017.2/bin:${HOME}/opt/pycharm/bin:${HOME}/opt/intellij/bin:${PATH}
     export PATH=${HOME}/opt/bin:${HOME}/opt:${HOME}/git/drewlum/ShellScripts:/usr/local/bin:${HOME}/opt/Xilinx/Vivado/2017.2/bin:${PATH}
     
     # Rust dev environemnt
     if [ $(hostname) == "ubuntu-1604-dev" ]; then
          export PATH=$HOME/.cargo/bin:${PATH}
     fi
     # Nodejs developemnt
     export NVM_DIR="/home/dlum/.nvm"
     if [ -d ~/.nvm ]; then
       export NVM_DIR="/home/dlum/.nvm"
       [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
     fi 
       
     umask u=rwx,g=rx,o=
     ulimit -c 10000000

     eval $(dircolors ${HOME}/git/drewlum/Linux/archive/shellcolors/dircolors.ansi-universal)
fi

# Alias definitions.
[ -L ~/.bash_aliases ] && source ~/.bash_aliases

# Alias colors
[ -L ~/.bash_colors ] &&  source  ~/.bash_colors

export EDITOR=vim

shopt -s checkwinsize
shopt -s cdspell

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

export HISTTIMEFORMAT="%h %d %H:%M:%S> "
export HISTIGNORE="&:ls:rm:ll:cd *:[bf]g:exit:l:less:more:make *:m *:history::cd:..:pine:foo:fink*:top:clear"
export HISTFILESIZE=32000
export HISTSIZE=32000
export SAVEHIST=32000
stty -ixon

history(){
 syncHistory
 builtin history "$@"
}

syncHistory(){
 builtin history -a
 HISTFILESIZE=$HISTFILESIZE
 builtin history -c
 builtin history -r
}

#promptCommand(){
#  if [ "$TERM" = xterm ]
#  then 
#    case "$DISPLAY" in
#      *) printf "\033]0;%s\007"                     "$PWD"
#        ;;
#      *) printf "\033]0;%s -- %s\007" "$HOST_UPPER" "$PWD" 
#        ;;
#    esac
#  fi
#  syncHistory
#}

#function parse_git_branch() {
#  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
#}

# get current branch in git repo
function parse_git_branch() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ ! "${BRANCH}" == "" ]
    then
        STAT=`parse_git_dirty`
        echo "(${BRANCH}${STAT})"
    else
        echo ""
    fi
}

# get current status of git repo
function parse_git_dirty {
    status=`git status 2>&1 | tee`
    dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
    untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
    ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
    newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
    renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
    deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
    bits=''
    if [ "${renamed}" == "0" ]; then
        bits=">${bits}"
    fi
    if [ "${ahead}" == "0" ]; then
        bits="*${bits}"
    fi
    if [ "${newfile}" == "0" ]; then
        bits="+${bits}"
    fi
    if [ "${untracked}" == "0" ]; then
        bits="?${bits}"
    fi
    if [ "${deleted}" == "0" ]; then
        bits="x${bits}"
    fi
    if [ "${dirty}" == "0" ]; then
        bits="!${bits}"
    fi
    if [ ! "${bits}" == "" ]; then
        echo " ${bits}"
    else
        echo ""
    fi
}


export HOST_UPPER=`echo $HOSTNAME | tr '[a-z]' '[A-Z]'`
#export PROMPT_COMMAND=promptCommand
#export PROMPT_COMMAND=""
#export PS1="\]\u@\h:\w\$(parse_git_branch)>\[\]"
export PS1="\u@\h:\w\`parse_git_branch\`$ "

source ${HOME}/git/drewlum/ShellScripts/h.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
