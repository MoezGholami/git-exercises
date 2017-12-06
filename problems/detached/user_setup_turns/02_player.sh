#!/bin/bash

source "$exercise_dir/../../library_functions/index.sh"

username="$1"

user_repo_dir_from_name "$username"
user_repo_dir="$result"

create_local_repository "$username"
cd "$user_repo_dir"
git pull origin master

newest_commit_id=$(git rev-list HEAD | head -1)
old_commit_id=$(git rev-list HEAD | head -5 | tail -1)

git checkout $old_commit_id
git checkout $newest_commit_id


echo "None" > content.txt
git add content.txt
git commit -m "set content to None"
