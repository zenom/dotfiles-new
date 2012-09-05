#!/bin/sh
# Get the branch name
branch_name=$(git branch | grep "*" | sed "s/* //")
if [[ "$branch_name" == (feature|bugfix)*]]
then
  # ticket number from current branch
  ticket=$(echo $branch_name | awk -F"/" '{print $2}')
  message=$1
  if [ ! -n "$message" ]; then
    echo "ERROR: You must enter a commit message."
  else
    echo "Running git add -A && git commit -m '$ticket $message'"
    git add -A && git commit  -m "$ticket $message"
  fi
else
  echo "ERROR: NOT IN A FEATURE BRANCH USE A DIFFERENT COMMIT METHOD!"
fi
