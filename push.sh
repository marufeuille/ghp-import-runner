#!/bin/ash
git clone ${GIT_REPO} /root/repos
cd /root/repos
git checkout ${SOURCE_BRANCH}
hugo
cp CNAME public/
ghp-import -b master -m "$(date '+%Y%m%d-%h%M%s') commit" public/
git push origin master
