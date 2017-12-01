#!/bin/bash

source "$exercise_dir/../../library_functions/index.sh"

username="$1"

user_repo_dir_from_name "$username"
user_repo_dir="$result"

cd "$user_repo_dir"
printf "hello\nworld.\ngoodbye world\n" > a.txt
printf "here is my bio" > bio.txt
git commit -am "add bio and modify a.txt"
