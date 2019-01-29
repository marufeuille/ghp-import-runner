#!/bin/ash
git clone ${GIT_REPO} /root/repos
cd /root/repos
git checkout ${SOURCE_BRANCH}
mkdocs build
cp CNAME site/
ghp-import -b master -m "$(date '+%Y%m%d-%h%M%s') commit" site/
git push origin master
