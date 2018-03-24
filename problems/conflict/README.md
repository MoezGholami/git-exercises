# Conflict

## Objectives
In this exercise, you are going to practice conflict resolution on same (master) branch.

## Description
You and Ali are working on some text files. Ali creates the a.txt file containing `hello world` and pushes his changes to the remote, then you pull the files from remote. Once you got the files from remote, you add `goodbye world` to a.txt and create a file named bio.txt containing your biography. Finally, you commit your changes, but when you try to push your codes to the remote, the remote server rejects your commit. You are also unable to pull the commits from the remote. You must figure out what happened, fix the problem, and push your commit to the remote.

## Tips
1. You can look at `user_setup_turns` directory too see what your colleague has done (like calling your colleagues in the real world) and how this problem happened. However, it is better to figure out the problem by yourself. It is even better not to look at the verification part before you find the problem.
2. Before making another commit, try to pull the latest changes from the remote. By typing `git status`, you can see the problematic files. There are probably some files which are not created by you.
3. Try to inspect the problematic files and resolve the issue.
4. Try to use `git mergetool`. If you haven't configured it, now, it's a good time to configure it.

## Verification
1. Finally, you should be able to push your commit.
2. In `a.txt`, you should recognize your own changes from other people changes.
3. In `a.txt`, you should be able to locate the conflicting part and choose the change(s) you want to keep.
4. When you are writing the merge commit message, you should be able to see the conflicts in the rest of the commit file. Do not forget to write a conventional commit message.
5. You should be able to push your commits. Both `b.txt` and `bio.txt` should remain in the repository after you push your commits.
6. Go to Ali's local repo, you must be able to pull the new changes. The result of `git log` should be same in all local and remote repositories.

## Recap
In this exercise, after we make a new commit, and before pushing it, the remote was fed with new commits by our colleagues. (Sometimes before we commit our changes, when we pull from the remote, conflicting commits will be pulled, that's a different story. See other conflict exercises.) We could identify and resolve a conflict and then update the remote server with the conflict resoluted state of repository.
Now, it's better to tell Ali that you have resolved a conflict. So it's better for him to pull the commits from the remote to prevent further conflicts.
