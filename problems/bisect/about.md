# Bisect

## Objectives
In this exercise, you are going to find the first commit which introduced a bug in the repository history.

## Description
You and Ali are working together on a repository. You mainly do modifications on the file content.txt. After 250+ commits, you realize you have a bug which did not exist in the first commit. More specifically, when you run test.sh, you see the test is failing. Your job is to find the first commit which introduced the bug and see the changes made in that commit.
Please note that the bug in this exercise is not a real bug, it is made up. Therefore, do not try to fix it (it is very trivial), and do not look at the content of tesh.sh file as it spoils the exercise.

## Tips
1. Do not look at test.sh file content neither the verification section of this document; it will spoil the exercise.
2. You may use `git bisect` to do a binary search through the commits. This can be done manually or by trying a test script (which is already provided). Be sure to try it manually too. Look at [this page](https://git-scm.com/docs/git-bisect) for more info.
3. Sometimes, we do not want to find a bug; we want to find the first appearance of a change. In this case, we can use `old` and `new` respectively as synonyms of `good` and `bad`. Look at [the manual of `git bisect`](https://git-scm.com/docs/git-bisect) for more info.
4. If you want to run `git bisect` automatically, please make sure that the test script is available in all of your target commits as bisect goes through the history of your repository. One idea is to put the test out of the repository and call it inside the repository.
5. It is a good idea to run the tests (or a subset of them) after each commit to verify the integrity of the codebase. This concept is called [regression testing](https://en.wikipedia.org/wiki/Regression_testing). There are some services which run the tests for you after each commit. By the time of writing this document, [Travis CI](https://travis-ci.org/) is one of the most well known continuous integration services which is free for public codebases; you may [try it now](https://docs.travis-ci.com/user/getting-started/). However, this scenario is still probable as we might have some newly found bugs which were not covered by any test.
6. `git bisect` is the tool for finding the errorenous commit and its author. If you want to see who has messed up a specific file, you may try `git blame` which is going to be covered in this exercise set.

## Verification
1. Sometimes git bisect might fail to find the erroneous commit. Can you think about the examples? Can you make it fail in this exercise also?
2. You should be able to see the difference between the first buggy commit and the commit before it. If you see the test file, you will see that was an artificial bug. But in reality, you must be able to compare the buggy commit with the commit before it.
3. If you look at the test.sh file, you will figure out that the first buggy commit is the one with message `"set content to 76"`. Your bisect should return this result.
4. Once you found the bug, you should be able to go back to the latest commit (`git log` should show the most recent commit again) and start debugging. In this exercise, no debugging is necessary.

## Recap
In this exercise, after a long time of development and a long chain of commits, we found a new bug. Determining the history search range, we could do a binary search to find the first buggy commit both in manual and automated way. Then we went back to the most recent commit and started debugging.
Remember, most of the times, the first step of debugging is to write a test which shows the bug. After fixing the issue, you should write another test which is checking the source of the bug.