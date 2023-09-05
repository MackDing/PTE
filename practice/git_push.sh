#!/bin/bash
cd "$(dirname "$0")"
# Check if WFD.txt has been modified
if [[ -n $(git status --porcelain WFD.txt) ]]; then
  # WFD.txt has changes, add it to the staging area
  git add WFD.txt

  # Commit and push the changes with the current timestamp as the commit message
  git commit -m "$(TZ=Asia/Singapore date '+%Y-%m-%d %H:%M:%S %Z')"
  git push origin master
else
  # WFD.txt has no changes
  echo "no change"
  exit 0
fi
