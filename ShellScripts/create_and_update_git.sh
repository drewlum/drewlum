#!/bin/bash
#set -x

source ${HOME}/.bashrc
WORKING_DIR=${HOME}/git/servers
HOSTS_FILE=$(<$(pwd)/hosts)
#HOSTS_FILE=$(/home/dlum/git/drewlum/ShellScripts/hosts)

function git_updater() {
  cd $1
  echo "Git Update for $1 @ $(date +%D-%H:%M:%S)"
  git pull --rebase
}

function create_servers(){
  if [ ! -d $WORKING_DIR ]; then
    echo "creating director $WORKING_DIR"
    mkdir -p $WORKING_DIR
  fi
  cd $WORKING_DIR
  echo "$HOSTS_FILE" 
  
  for i in $HOSTS_FILE
  do
    echo "Creating Directory for $i"
    mkdir $i
    cd $i
    git clone git@git:~/servers/$i/etc.git
    git clone git@git:~/servers/$i/configs.git
    cd ..
  done
}

function git_update(){
  for i in $(ls ${WORKING_DIR})
  do
    echo "In directory $i"
    git_updater ${WORKING_DIR}/$i/etc
    git_updater ${WORKING_DIR}/$i/configs
  done
}


#create_servers 
git_update
