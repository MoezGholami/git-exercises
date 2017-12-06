# Detached Head

## Objectives
In this exercise, we will see how insidious detached HEAD states is and how to get rid from it.

## Description
You and Ali are working on a repository. At some stage of your development, you do something like checking out previous commits and coming back, or merging remote branches, etc. Then you'll somehow figure out to come back to your most recent commit on branch "master". You run `git log` to make sure about the history and `git status` to see the working directory is clean. However, this time, the output of `git status` starts with `HEAD detached from xxx`. Since you are not familiar enough with Git; you go ahead and make some changes. Your last commit have this message: `set content to None`.
After making your commits, you try to push your changes to the remote. However, nothing is pushed although `git log` shows your new changes. Weird situation. You checkout the remote branches to see what is wrong. When you checkout master again and come back (this means you should run `git checkout master`) you will not find your new commit(s). They are lost, you checkout everys single branch and run `git log` but they are not anywhere. Your task is to recover your new commits.

## Tips
1. You need to see reference logs of your local repository to find the ID of your lost commit again. When you find your your lost commits, try to verify it by running `git log`.
2. You need to add your lost commit (after finding them) to master or a new branch (which operation is about adding other commits to a specific branch?).
3. You can find more information about detached HEAD state [here](https://www.git-tower.com/learn/git/faq/detached-head-when-checkout-commit).

## Verification
1. You must not remember the ID of your lost commit. Do not cheat!
2. You must checkout master and see they are lost.
3. You must find the ID of your lost commit. When you go back to your lost commit, you should see the changes in `git log`.
4. You should add your lost commit to the master branch. It means when you checkout master, you should see the lost commit in the history.
5. Finally, you should be able to push your commit.

## Recap
In this exercise, we simulated a detached HEAD state. We saw that how dangerous it could be if we do not know about it; we can loose our commits and have difficulty in recovering them. We could find our lost changes again and we reconcile it with master.
