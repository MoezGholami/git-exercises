# Changing previous commits

## Objectives
In this problem, you are going to fix some blunders in previous commits and change the previous commits.

## Description
You and Ali are working on an open-source web application. You have some text files to be served as static files. When you try to pull the commits from the remote to work on the project, you notice that the pull operation is taking an unusual amount of time (you should have only a few text files and maybe some codes). Also, when you look at the static files, you'll see a weird backup.sql file, which definitely should not be shared to all users as it is a backup of your private database's contents! First, you need to track when this file was added to your repository. Then you need to remove it from all commits, as it is slowing down your operations and more importantly, any stranger can download your project and checkout previous commits to see your users' private data. In fact, it's a terrible situation; your users' private data are public and you might be sued. You must make sure that not only your fix is done to your local repository, but also, to the remote repository. Also, you must make sure that after the project contributors update their local repo, the backup file is removed. Finally, as an extra work (actually, this is not in the scope of this problem), you must make sure that no files like this will be committed, even accidentally.

## Tips
1. Try to figure out the issue on your own local repository before looking at `user_setup_turns` to see what Ali has done. If you still cannot figure it out, you make take a look at his command history.
2. In order to track the changes to find the exact time when the backup file was added, you make use `git log --stat` command. If you want to look at it in a deeper way, you may use `git bisect`. For this problem, `git log` seems enough (bisect is out of the scope of this problem). If you want to temporarily browse a repository at a certain commit, you may see [this post](https://stackoverflow.com/a/10230489); also you may run an interactive command for `git filter-branch` (explained below).
3. After locating the issue, you need to fix it, you may use `git filter-branch`. There is a useful blog post by Github in this regard [here](https://help.github.com/articles/removing-sensitive-data-from-a-repository/). However, in some cases, it's better to run an interactive shell for `git filter-branch`, as having a script to automatically remove a file might be dangerous. You may use `git filter branch --tree-filter 'bash < /dev/tty' [other options]` to run a `bash` session to manually see the repository at the selected commits and manually modify the files in each commit.
4. You may setup a `.gitignore` file for your repository to prevent further mistakes like this. There is a problem about git ignore (see related exercises).
5. You are going to remove some file even from previous commits, you need to be careful about these kinds of works because this is putting the primary purpose of version control under question.
6. You need to overwrite history of remote repository; therefore you must forcefully push all of your commits to the remote.
7. In these situations, you must fix the issue immediately and you must inform all the other members of the team about the issue and what you've done; they may get angry if you change the previous commits. Also, the collaborators must do `rebase` instead of merge; the history of their local repository must be overwritten too.

## Verification
1. Be sure to remove the backup file form previous commits. Please note that during the previous commits, the location of the backup file has been changed; it should be removed from all locations.
2. Go to your own local repository, try to remove all files (including the .git directory) and re-initialize your local repository and pull from the remote. You should not be able to see the backup file. Also, no tracks of that file should be in the git logs. Also, if you are on a Unix like system, if you type `du -sh` in your terminal, the size of the local repository should be less than 10MB. No other file should be removed from the repository.
3. Go to Ali's local repository, Ali must still have the backup file in his working directory. But after pulling the changes from the server, Ai should not be able to add the backup file in any other commit anymore (as we already ignored it).

## Recap
In this problem, we noticed that the git is running slow due to a large file in the codebase. We could identify the issue and solve it for ourselves and our teammates. Also, using `.gitignore`, we made sure that no such mistakes will happen. Situations like this are sometimes dangerous as some sensitive data is made public and their solution is dangerous too (especially if we do it wrong) as we are changing the previous commits. In situations like this, we must inform all other teammates and try to fix the issue with the supervision of other teammates if possible.

## Related exercises
rebase(TODO), ignore(TODO), bisect(TODO)
