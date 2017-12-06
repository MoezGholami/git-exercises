#!/bin/bash

source "$exercise_dir/../../library_functions/index.sh"

username="$1"

user_repo_dir_from_name "$username"
user_repo_dir="$result"

cd "$user_repo_dir"
git checkout -b feature
printf "what's up world?\n" > b.txt
printf "have a nice day world\n" > c.txt
git add .
git commit -m "start new feature"
git push origin feature
