#!/bin/ash
git clone ${GIT_REPO} /root/repos
cd /root/repos
git checkout ${SOURCE_BRANCH}
ghp-import -b master -m "$(date '+%Y%m%d-%h%M%s') commit" output
git push origin master
