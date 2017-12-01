#!/bin/bash

source ../../library_functions/index.sh setup

clean
setup_remote_repo
do_users_setup

base_dir="$(pwd)"

total=256
echo -n "0/$total"

for i in $(seq 1 $(($total-1))); do
    p=$(($i*100/$total))
    echo -ne "$p/100%\033[0K\r"

    if [[ $(($i%2)) -eq 0 ]]; then
        username="player"
    else
        username="ali"
    fi

    cd "$base_dir"
    user_repo_dir_from_name "$username"
    cd "$result"

    git pull origin master > /dev/null 2>&1
    number="$(cat content.txt)"
    number=$(($number+1))
    echo "$number" > content.txt
    git commit -am "set content to $number" > /dev/null 2>&1
    git push origin master > /dev/null 2>&1
done

user_repo_dir_from_name "player"
cd "$result"

git pull origin master > /dev/null 2>&1
cd "$base_dir"
