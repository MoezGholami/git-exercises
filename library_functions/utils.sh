#!/bin/bash

extract_username_from_turn_name()
{
    local turn_name="$(basename "$1")"
    local username="$(echo "$turn_name" | sed -e 's/[0-9]*_//' -e 's/\.[^.]*$//')"
    result="$username"
}

user_repo_dir_from_name()
{
    local username="$1"
    local repo_name="$username"_local_repo
    result="$repositories_dir/$repo_name"
}
