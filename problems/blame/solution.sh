#!/bin/bash

# This script must be called inside player's local repository

git diff HEAD~1 HEAD        # verify that there is no change, ali hasn't done anything
git blame roster.txt        # see who has added the line "ali is present"


# This is optional. If you cannot understand it, please solve the "checkout" exercise

# find the commit which that lie is told
git blame roster.txt | grep "ali is present" | read lie_commit rest

git checkout $lie_commit    # go to the lying commit

git log                     # see who lied
git diff HEAD~1 HEAD        # see the difference and verify the result
git checkout master         # go back to the most recent commit
