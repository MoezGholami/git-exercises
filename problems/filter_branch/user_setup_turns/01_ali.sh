#!/bin/bash

source "$exercise_dir/../../library_functions/index.sh"

username="$1"

user_repo_dir_from_name "$username"
user_repo_dir="$result"

create_local_repository "$username"
cd "$user_repo_dir"

echo "I am readme" > readme.txt
git add .
git commit -am "initial commit"

mkdir text_files
cd text_files
echo "I am Ali" > a.txt
echo "I am a good developer" > b.txt
echo "I don't like cheese" > 2Bremoved.txt
dd if=/dev/zero of=backup.sql bs=400000000 count=1
cd ..
git add .
git commit -am "add the text files"

echo "I am the best" > text_files/c.txt
git add text_files/c.txt
git commit -am "add c.txt"

mkdir public_files
echo "I am Ali the great!" > text_files/a.txt
git mv text_files public_files
git add .
git commit -am "move text files to public_files, change one a.txt"

echo "I am the very best" > public_files/text_files/d.txt
git rm public_files/text_files/2Bremoved.txt
git add .
git commit -am "add d.txt and delete 2Bremoved"

git push origin master
