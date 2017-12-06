# Stash

## Objectives
In this exercise, you are going to get introduced to Git stash.

## Description
You and Ali are working on a same repository. You are working on master branch and Ali is working on a feature branch. Ali asks you to checkout his branch and look at his codes. However, when you try to checkout feature branch, you face some problems. Your job is solving them.

## Tips
1. Basically, `git stash` works in a LIFO (last in first out order), you can also see what you have in stash and apply what you want.
2. Stash entries are independent from branches. Therefore, applying them may cause conflicts.
3. You can stash untracked file too.

## Verification
1. You should be able to look at feature branch and its content.
2. You should be able to see what you have in the stash and choose the entry you want to apply.
3. You should be able to come back to the master branch. when you come back, the content of a.txt, b.txt, c.txt should not have changed. `git status` must say that working directory is clean.
4. You should be able to remove stash entries which you no longer need.

## Recap
In this exercise, we saw that we cannot switch the branches if the working directory is not clean. We used Git stash to temporary stash away the changes and apply them later.
