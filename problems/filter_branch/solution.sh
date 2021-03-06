#!/bin/bash

#This script must be called inside player's local repository

#pull the commits to see the problem
git pull origin master

#first find and remove any sql file from all commits. Using an automated/manual way
git filter-branch --tree-filter 'find . -name "*.sql" | while read path; do rm "$path"; done' HEAD
git filter-branch --tree-filter 'bash < /dev/tty' HEAD

#Now it's better to ignore all '.sql' files to prevent such disasters
echo "# ignore all sql backup files" >> .gitignore
echo "*.sql" >> .gitignore
git add .gitignore
git commit -m "add gitignore to prevent further blunders like this"


#Then push all overwritten history to the remote and overrite it
git push --force --all

#You're done with remote and local repository of the player. Now, go to Ali's local repo and
#overwrite his local repository with the contents of remote

#This script must be called inside Ali's local repository
git pull --rebase origin master
