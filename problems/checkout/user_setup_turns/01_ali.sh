#!/bin/bash

source "$exercise_dir/../../library_functions/index.sh"

username="$1"

user_repo_dir_from_name "$username"
user_repo_dir="$result"

create_local_repository "$username"
cd "$user_repo_dir"
echo "0" > content.txt

total=10

git add content.txt
git commit -am "initial commit"

for i in $(seq 1 $total); do
    echo "$i" > content.txt
    git add content.txt
    git commit -m "set content to $i"
done

git push origin master
