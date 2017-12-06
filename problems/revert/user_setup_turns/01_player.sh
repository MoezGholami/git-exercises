#!/bin/bash

source "$exercise_dir/../../library_functions/index.sh"

username="$1"

user_repo_dir_from_name "$username"
user_repo_dir="$result"

create_local_repository "$username"
cd "$user_repo_dir"

total=100

for i in $(seq 1 $total); do
    p=$(($i*100/$total))
    echo -ne "$p/100%\033[0K\r"

    echo "$i" > content.txt
    git add content.txt
    git commit -m "set content to $i" > /dev/null 2>&1
done

git push origin master > /dev/null 2>&1
