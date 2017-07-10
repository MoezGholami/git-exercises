#!/bin/bash

setup_remote_repo()
{
    cd "$exercise_dir"

    mkdir -p "$remote_repo_dir"
    cd "$remote_repo_dir"
    git init --bare > /dev/null
}

do_users_setup()
{
    local turns_dir="user_setup_turns"

    cd "$exercise_dir"

    cd "$turns_dir"
    for t in $(ls *.sh | sort)
    do
        echo "#running $t"

        extract_username_from_turn_name "$t"
        local username="$result"
        ./"$t" "$username"
        echo "done running $t"
        echo ""
    done
}

clean()
{
    rm -rf "$repositories_dir"
}
