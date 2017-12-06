# Revert

## Objectives
In this exercise, we want to revert some existing commits and continue the development from previous commits other than the most recent one.

## Description
One of the basic expectation of a version control system is reverting some of the changes and continueing the project from some previous stages. Unfortunately, Git does not do it well. Git has some commands like `git checkout` or `git reset` which brings you back to a previous commit; however, when you want to continue development from that point, you will not be able to go back to newer commits again.
More specifically, you have commits c1, c2, c3, c4, and c5. You want to go back to c3 again but you do not want to loose c4, and c5's data. Yes, when you check out c3, you can create a new branch from there and c4 and c5 will remain in the original branch; however, this solution is naive as it will lead to so many obsolete branches which causes confusion. Your job is to convert the sequence c1, c2, c3, c4, c5 to c1, c2, c3, c4, c5, c3' (or something similar to it in the same branch) where the content of c3' is identical to c3, so that you can go back to c4 (for example) whenever you want.
There are two solutions for that problem, one of them is using `git revert` and the other one is using `git merge`; each of them have their own consequences.
In this exercise, you are going to rollback to the commit with message `set content to 80` (19th commit before the last commit) while you are keeping the next commits.

## Tips
1. The 19th commit was intentionally chosen to make it difficult to manually do the operation from the last commit to 19th commit before the last one. Try to get the list of commit IDs from last to the 19th automatically. You may run `git revert` in a for loop. If you have any difficulty, first, try to go back to the 2nd commit before the last one.
2. You can use `git revert` without having to make a commit for each revert. Find out how.
3. If you want to use `git merge`, try to find out how we can make a commit without any change; also, how to do merge (not rebase) and ignore the changes of "ours" and we accept "theirs".

## Verification
1. In the master branch, you last commit should have same content comparing to the commit with messsage `set content to 80`. It is obvious that you should not manually change the content.
2. You should have all commits from `set content to 81` to `set content to 100` in your history when you try `git log`. It is OK if you have some extra commits to show you have reverted some changes.
3. At the end, you should not have any branch other than "master" when you try `git branch`.
4. Try to have some meaningful messages for your extra commits.
5. Once you have done the exercise with both `git revert` and `git merge`, run `git log --graph` to see how they are different. Also, one of the approaches needs more extra commits than the other; can you tell which one?


## Recap
In this exercise, we practiced how to rollback to a previous commit in the same branch and keeping the next commits. Both `git revert` and `git merge` can be useful. By merging, we can have a better view of what we have done, and by reverting, we require only one extra commit, not two.