#!/bin/bash
source ${HOME}/.bashrc
WORKING_DIR="${HOME}/git/HomeIT"

function backup_office() {
  ${HOME}/git/HomeIT/scripts/get-router-board-configs.sh  
}

function git_committer() {
  cd $1
  git add *
  git commit -m "Nightly Automated Backup for $(hostname) on $(date +%D-%H:%M:%S)" -a
  git push origin master
}

function git_updater() {
  cd $1
  echo "Git Update for $1 @ $(date +%D-%H:%M:%S)"
  git pull --rebase
}

echo "######################## Start #############################"
git_updater ${HOME}/git/drewlum
git_committer ${HOME}/git/drewlum
git_committer ${WORKING_DIR}/scripts

for i in $(ls ${WORKING_DIR}/servers/)
do
  echo "In directory $i"
  git_updater ${WORKING_DIR}/servers/$i/etc
  git_updater ${WORKING_DIR}/servers/$i/configs
done

git_committer ${WORKING_DIR}/configs
git_committer ${WORKING_DIR}/configs/office-router

echo "Updating Home master and copying to git/HomeMaster"
cd ${HOME}/svn/HomeMaster; svn up; rsync -av . --exclude .svn --exclude xarb ${HOME}/git/HomeMaster/

echo "copying files to tmaster"
rsync -av dlum@blackbird:~/vector/ ${HOME}/scratch/tmaster/
cd ${HOME}/scratch/tmaster

echo "reverting changes"
for i in `svn status | grep -v \?`;do echo "reverting file $i"; svn revert $i;done

echo "copying files to git HomeMaster"
rsync -av xgateway xpanel bv2 config pilot res runner xgateway --exclude .svn  --exclude .swp ${HOME}/git/HomeMaster/
cd ${HOME}

echo "######################## Finished #############################"
