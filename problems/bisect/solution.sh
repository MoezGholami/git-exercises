#!/bin/bash

# This script must be called inside player's local repository

git pull origin master
./test.sh; echo $?                                  # run the test and see the failure (return value of test.sh is important)
git bisect start                                    # start bisect
git bisect bad                                      # this commit must be marked as a bad commit
                                                    # the first commit is considered as a good commit
good_hash=$(git rev-list HEAD | tail -1)            # get the hash of the first commit
echo $good_hash                                     # see the hash of the first commit
git bisect good $good_hash                          # the first commit is considered as a good commit

# now, it will automatically checkout to the commit at the middle, you may manually run the tests again
# if you say 'git bisect good' it will go forth, if you say 'git bisect bad' it will go back

./test.sh
git bisect bad                                      # if test fails

./test.sh
git bisect good                                     # if test passes


# but we don't want to do it manually because we have test
git bisect run ./test.sh                            # run the test everytime to find the first bad commit

git diff HEAD~1 HEAD                                # see the difference between the bad commit and previous good commit
git bisect reset                                    # we are done
