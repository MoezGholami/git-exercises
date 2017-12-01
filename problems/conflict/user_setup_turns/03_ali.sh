#!/bin/bash

source "$exercise_dir/../../library_functions/index.sh"

username="$1"

user_repo_dir_from_name "$username"
user_repo_dir="$result"

cd "$user_repo_dir"
printf "hello\nworld.\nhow are you?\n" > a.txt
printf "I am another file\n" > b.txt
git add *.txt
git commit -am "modify text files"
git push origin master
