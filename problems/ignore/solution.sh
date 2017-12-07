#!/bin/bash

# The following lines must be run inside player's local repository

git pull origin master                          # see it fails
git status                                      # see the status
mv my_IDE_project_history /tmp                  # temporarily move your IDE files to somewhere else
git pull origin master                          # now it should work

git rm -r my_IDE_project_history                # get rid of your IDE specific files in the repository
git status                                      # see the status
ls                                              # make sure that you did not remove your local copy
echo "my_IDE_project_history/" >> .gitignore    # ignore your IDE specific files

git add .gitignore                              # commit your updated gitignore
git commit -am "ignore IDE specific files"      # 
git push origin master
mv /tmp/my_IDE_project_history .                # get your local IDE files back
git status                                      # your working directory should be empty

# The following lines must be run inside Ali's local repository

cp -R my_IDE_project_history /tmp               # temporary move your IDE files, they are going to be deleted otherwise
git pull origin master                          # pull the changes
ls                                              # see that it is deleted
mv /tmp/my_IDE_project_history .                # put back your IDE files
git status                                      # make sure that your working directory is clean


# The following lines must be run inside Vali's local repository

git pull origin master                          # pull the changes
ls                                              # no IDE specific file is there
