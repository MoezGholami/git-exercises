#!/bin/bash

create_local_repository()
{
    local username="$1"

    user_repo_dir_from_name "$username"
    local user_repo_dir="$result"

    mkdir -p "$user_repo_dir"
    cd "$user_repo_dir"
    git init
    git remote add origin "$remote_repo_dir"
    git config user.name "$username"
    git config user.email "$username@example.com"
}
