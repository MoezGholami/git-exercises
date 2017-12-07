#!/bin/bash

source "$exercise_dir/../../library_functions/index.sh"

username="$1"

user_repo_dir_from_name "$username"
user_repo_dir="$result"

cd "$user_repo_dir"
printf "print ('hello world')" > hello.py
mkdir "my_IDE_project_history"
for i in $(seq 1 9); do
    printf "ali_history$i\n" >> "my_IDE_project_history/history.txt"
done
git add .
git commit -am "add python files"
git push origin master
