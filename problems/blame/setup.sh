#!/bin/bash

source ../../library_functions/index.sh setup

base_dir="$(pwd)"

clean
setup_remote_repo


liar_num=14
i=0
NAMES_FILE=".names.txt"
add_name_to_roster() {
    username="$1"
    i=$(($i+1))
    
    user_repo_dir_from_name "$username"
    user_repo_dir="$result"
    
    create_local_repository "$username" > /dev/null 2>&1
    cd "$user_repo_dir"

    git pull origin master > /dev/null 2>&1

    if [[ "$i" -eq "1" ]]; then
        echo "read me :)" > readme.txt
        git add readme.txt > /dev/null 2>&1
        git commit -m "Initial Commit" > /dev/null 2>&1
    fi

    if [[ "$i" -eq "$liar_num" ]]; then
        head -$(($i/2)) roster.txt > roster.txt.copy
        echo "ali is present" >> roster.txt.copy
        tail -$(($i-1-$i/2)) roster.txt >> roster.txt.copy
        mv roster.txt.copy roster.txt
    fi

    echo "$username is present" >> roster.txt
    git add roster.txt > /dev/null 2>&1
    git commit -m "add $username to roster" > /dev/null 2>&1
    git push origin master > /dev/null 2>&1
    cd ..
    rm -rf "$user_repo_dir"

    cd "$base_dir"
}

cd "$base_dir"
echo "running multiple operations, please wait ..."
for name in $(cat $NAMES_FILE); do
    add_name_to_roster $name
done

do_users_setup
