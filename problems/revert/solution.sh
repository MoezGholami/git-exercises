#!/bin/bash

# This script must be called inside player's local repository
# Solution 1, using 'git revert'
    
    # see the logs
    git log

    commits_to_revert=20
    # revert as much as you want
    cid=$(git rev-list HEAD~$commits_to_revert | head -1)
    git revert $cid..HEAD --no-commit
    
    # see the status
    git status
    ls
    cat content.txt
    
    # see the logs
    git log
    
    # commit what you want
    git commit -m "Revert from 'set content to 100' to 'set content to 80'"
    
    # you must be able to see the next commits too
    git log

    # see the graphical representation of what you have done
    git log --graph

    # push the changes
    git push origin master
# End of Solution 1

# Solution 2, using 'git merge'
    # see the logs
    git log

    commits_to_revert=$((20+1))

    # find the commit which you want to rollback to
    rollback_target_id=$(git rev-list HEAD | head -$commits_to_revert | tail -1)

    # checkout to the commit which you want to rollback to
    git checkout $rollback_target_id
    
    # see the status
    git status
    ls
    cat content.txt
    
    # see the logs
    git log
    
    # create a new temporary branch
    git checkout -b flashback

    # commit what you want (you don't have any change to commit BTW)
    git commit --allow-empty -m "Prepare to rolling back to $rollback_target_id: 'set content to 80'"

    # go back to master again
    git checkout master

    # merge master with flash back, accept flashback's changes
    git merge -m "rollback to $rollback_target_id: 'set content to 80'" --strategy-option theirs flashback
    
    # remove unnecessary flashback branch
    git branch -D flashback

    # you must be able to see the next commits too
    git log

    # see the graphical representation of what you have done
    git log --graph

    # push the changes
    git push origin master
# End of Solution 2


# This script must be called inside Ali's local repository

# see the logs
git log

# pull the new commits
git pull origin master

# see the graphical representation of what has happened
git log --graph
