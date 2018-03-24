# Checkout

## Objectives
In this exercise, we are going to browse the repository at a previous stage and go back to the most recent commit again.

## Description
This is an easy exercise, you job is to browse the repository at the 5th previous commit. Feel free to see the files and view their contents. Then you must come back to most recent commit again.

## Tips
1. You can see the logs by trying `git log` command and see the 5th previous commit and its ID. You can check it out easily.
2. How do you come back to the most recent commit? Can we see the logs of next commits after HEAD? If not, why git doesn't provide that functionality (it's conceptual)?
3. Without remembering the ID of most recent commit, how can we go back to it?
4. If you remember the most recent commit's ID to get back, do you see anything weird?

## Verification
1. After you go back to the previous commit you want, the `git log` must show that commit on top, not the most recent commit.
2. You should be able to go back to the most recent commit without memorizing its ID.
3. Check out the previous commit again. This time use the ID of most recent commit to go back. Do you see anything weird? Type `git branch` for more info. This state is called "detached head"; it is dangerous and can cause some problems (other exercises are covering it).
4. When you go back without the ID of most recent commit, you must not be in "detached head" state.

## Recap
In this exercise, we browsed the repository at a previous stage. However, going back can be tricky as we will no longer access the commits after HEAD by trying `git log`. This is due to non-linear nature of commits in Git.
Also, if we remember the ID of most recent commit and check it out to go back, we will get into detached HEAD state which can be problematic. We were able to go back to the most recent commit without using the ID of most recent commit and without getting into detached HEAD state.
Although the main solution of this exercise was easy, we experienced some Git concepts like non-linear development and detached HEAD state.
