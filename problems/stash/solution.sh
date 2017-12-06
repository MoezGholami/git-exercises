#!/bin/bash

#This script must be called inside player's local repository

git checkout feature                # switch to other branch fails

git status                          # see the status
git stash save "before_looking" -u  # stash the changes including untracked files
git stash list                      # show the changes in stash
git stash list                      # list the stash entries
git checkout feature                # switch to other branch succeeds

ls                                  # take a look

git checkout master                 # switch back to master
git stash list                      # list the stash entries
git stash pop 0                     # pop the stash entry

ls                                  # check the status again
git status

git stash list                      # stash list must be empty
