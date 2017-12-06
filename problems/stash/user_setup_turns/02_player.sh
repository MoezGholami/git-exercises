#!/bin/bash

source "$exercise_dir/../../library_functions/index.sh"

username="$1"

user_repo_dir_from_name "$username"
user_repo_dir="$result"

create_local_repository "$username"
cd "$user_repo_dir"
git pull origin master

printf "how are you world?\n" > b.txt
git add b.txt
printf "goodbye world?\n" > c.txt
