#!/bin/bash

# This script must be called inside player's local repository
# Although this is an easy exercise, it took time for me to find the solution

newest_commit_id=$(git rev-list HEAD | head -1)
old_commit_id=$(git rev-list HEAD | head -5 | tail -1)

git checkout $old_commit_id     # checkout an old commit

ls
cat content.txt
git status                      # look at some stuff

git log                         # you don't see the newest commit and its ID anymore to checkout
                                # due to non-linear structure of git commits, you cannot see the list of next commits either

git checkout master             # by checking out the branch you are at, you can come back again

ls
cat content.txt
git status
git log                         # now, you are at the newest commit again, enjoy
