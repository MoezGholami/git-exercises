#!/bin/bash

# This script must be called inside player's local repository

git push origin master                      # you cannot push your new commit. why?
git log                                     # see the logs to see your last commit
git checkout master                         # checkout to master
git log                                     # the commit is vanished. where is it?

git branch -a                               # you cannot see the detached head branch, yes, detached HEAD status is insidious
                                            # everything is screwed up :|


git reflog                                  # see the detailed logs using these commands
git log -p                                  # see the ID of your last commit

git checkout YOUR_LAST_COMMIT_ID            # let's go back there

git log                                     # yes, your commit is back :) , let's fix it forever

git checkout master                         # go back to master

git merge YOUR_LAST_COMMIT_ID               # it will merge your detached head commits to master (usually fast forward merge)
git branch new_branch YOUR_LAST_COMMIT_ID   # you can also check it out as a new branch, as you want

git log                                     # you have all of your commits in a normal branch

git push origin master                      # let's push it
