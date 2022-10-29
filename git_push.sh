#!/bin/bash
if tasklist | grep --quiet zotero; then # returns 0 if zotero process was found, 1 elsewise
read -n1 -r -p "Commit failed, please exit Zotero first!" key
else
echo "testing"
#git add .
#git commit -m "`date +\"%Y%m%d-%H%M%S\"`"
#git push origin master
fi 