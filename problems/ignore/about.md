# Ignore

## Objectives
In this exercise, you will see why it is necessary to ignore some files in Git and how to do that.

## Description
You and Ali are working on a project, you both are using Integrated Development Environments (IDE); and your IDEs track your actions to provide undo functionality. IDE related files are in "my_IDE_project_history" directory.
Ali has started before you and has made some commits. He does not have any problem, codes and pushes. But you cannot join him as every time you try to pull, it fails and requires conflict resolution. Here, resolving conflict is pointless as each of you want your own action history. Your job is to prevent any conflict in IDE specific files from now.

## Tips
1. You need to resolve conflict one time at the beginning. Is it going to be straight forward?
2. You need to tell git to stop tracking any changes in IDE specific files; for you, Ali, and everyone else.
3. You need to remove the tracked IDE specific files from the repository. However, it should not be removed from anyone's working directory.

## Verification
1. When you are done, make some change to the IDE specific files. `git status` should say that working directory is clean.
2. Both you and Ali should have your own IDE specific files. They should not be different with what you had before doing this exercise.
3. Go to Vali's local repository. He does not use any IDE. Pull the commits from remote. You should not see any IDE specific file in the last commit.
4. `.gitignore` files usually have frequent patterns and there are some tools to generate them for you. One of the most famous ones is [gitignore.io](https://gitignore.io). Feel free to create some gitignore files with it. Also, look at the content of the generated file to see what kind of files are usually ignored.
5. In addition to Language, IDE, and OS specific files, what kind of files should be ignored? What should we do with credential parameters which are not in a separate files (passwords, secret tokens, etc)?
6. What kind of IDE specific files are there which are better to be tracked?

## Recap
In this exercise, we realized that how important it is to ignore unwanted files. Moreover, we practiced how to start ignoring already tracked files.
