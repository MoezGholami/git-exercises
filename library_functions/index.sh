#!/bin/bash

export_variales()
{
    export exercise_dir="$(pwd)"
    cd ../../library_functions
    export library_functions="$(pwd)"
    export repositories_dir="$exercise_dir/repositories"

    export remote_repo_name="remote_repo"
    export remote_repo_dir="$repositories_dir/remote_repo"
    

    cd "$exercise_dir"
}

if [[ $1 == "setup" ]]; then
    export_variales
fi

source "$library_functions/common_user_actions.sh"
source "$library_functions/common_setup_actions.sh"
source "$library_functions/utils.sh"
