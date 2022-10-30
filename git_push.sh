#!/bin/bash
if tasklist | grep --quiet zotero; then # returns 0 if zotero process was found, 1 elsewise
read -n1 -r -p "Commit failed, please exit Zotero first!" key
else
echo "run git pull, add, commit, and push"
git pull origin main
git add .
git commit -m "`date +\"%Y_%m_%d-%H:%M\"`"
git push origin main
fi