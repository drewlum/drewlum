#.profile

if [ $(uname) == "Darwin" ];then
     export MANPATH=${MANPATH}:/opt/texlive2015/texmf-dist/doc/info:/opt/texlive2015/texmf-dist/doc/info

     # virtualenv
     export WORKON_HOME=~/virtualenvs
     source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh
     #source /usr/local/bin/virtualenvwrapper.sh
     export PATH=${HOME}/anaconda/bin:${HOME}/opt/bin:${HOME}/opt:${HOME}/git/drewlum/ShellScripts:${PATH}

else #Assuming Linux
     #History
     echo ".profile is being called!" 
     export HISTTIMEFORMAT="%h %d %H:%M:%S> "
     export HISTIGNORE="&:ls:rm:ll:cd *:[bf]g:exit:l:less:more:make *:m *:history::cd:..:pine:foo:fink*:top:clear"
     export HISTFILESIZE=32000
     export HISTSIZE=32000
     export SAVEHIST=32000
     #not sure if I need this anymore
     stty -ixon

     export INTEL_LICENSE_FILE=${HOME}/.intel/lic/
     export ECLIPSE="Eclipse CDT4 - Unix Makefiles"
     export CODEBLOCKS="CodeBlocks - Unix Makefiles"
     export UNIX_MAKE="Unix Makefiles"

     export PATH="${HOME}/anaconda2/bin:${PATH}"
#     export PATH="${HOME}/anaconda3/bin:${PATH}"
     export PATH=${HOME}/opt/bin:${HOME}/opt:${HOME}/git/drewlum/ShellScripts:/usr/local/bin:${HOME}/opt/Xilinx/Vivado/2017.2/bin:${PATH}
     export WCOLL=${HOME}/.pdsh.list
     export JAVA_HOME=/usr/lib/jvm/java-9-oracle
     alias xterm='xterm -bg black -fg white'
     export INTEL_LICENSE_FILE=${HOME}/.intel/lic/
     export PATH=${HOME}/bin:${HOME}/opt/Xilinx/Vivado/2017.2/bin:${HOME}/opt/pycharm/bin:${HOME}/opt/intellij/bin:${PATH}
     export NVM_DIR="/home/dlum/.nvm"
     [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
fi

export PATH="$HOME/.cargo/bin:$PATH"
