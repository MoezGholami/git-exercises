#!/bin/bash

#This script must be called inside player's local repository

git push origin master # see it fails, see the output
git pull origin master
git status # see the status
git add bio.txt
git mergetool # resolve the conflict by yourself
git add a.txt
git commit # make the commit
git push origin master
