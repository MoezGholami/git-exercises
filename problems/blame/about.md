# Blame

## Objectives
In this exercise, you are going to find the person who has made a specific change to a file.

## Description
You and your colleagues are working on a same repository. You are mainly working on a shared roster and sign in (That's a hypothetical scenario). Each developer should write "X is present" in the file where X is the developer's name and make a commit. When you checkout the project and see the Git logs, you see that every developer had made a commit and when you see the roster.txt file, you can find each developer's name exactly once.
Everything seems good. However, somebody tells you that Ali did not add himself to the roster and someone else have signed him in. Your job is to verify if Ali himself has signed in and if not, find the person who has signed him in. Also, if anyone else has signed Ali in, you must explicitly demonstrate the change he/she has made.

## Tips
1. Use `git log` to see the commit history of your repository.
2. Use `git diff` to see the difference between the commits.
3. There are multiple possible solutions for this exercise; however,  we want to cover `git blame` and tried to make it the most convenient solution. More information can be found [here](https://git-scm.com/docs/git-blame).
4. The name `git blame` and the purpose of this exercise (finding the liar) have a negative meaning, however, `git blame` can be very useful in some cases and the people will appreciate you.

## Verification
1. Verify if Ali has signed in by himself.
2. If someone else has signed Ali in, you must find him/her. You should also show the evidence explicitly.
3. Was there any way for Ali to override the history of the commits to wipe out the clues?  (See the other exercises)
4. How `git blame` is different with `git bisect`. When we should use blame? when bisect?

## Recap
In this exercise, without looking at the long history of commits, we could see who and in which commit has made the changes in different parts of each file. Also, we could clearly see the changes between each commit.