#!/bin/bash

source "$exercise_dir/../../library_functions/index.sh"

username="$1"

user_repo_dir_from_name "$username"
user_repo_dir="$result"

create_local_repository "$username"
cd "$user_repo_dir"
echo "0" > content.txt

printf '#!/bin/bash\n\n'                        >  "test.sh"
printf 'if [[ -f content.txt ]]; then\n'        >> "test.sh"
printf '\t number=$(cat content.txt)\n'         >> "test.sh"
printf '\t if [ "$number" -gt "75" ]; then\n'   >> "test.sh"
printf '\t\t echo "failure"\n'                  >> "test.sh"
printf '\t\t exit 2\n'                          >> "test.sh"
printf '\t else\n'                              >> "test.sh"
printf '\t\t echo "success"\n'                  >> "test.sh"
printf '\t\t exit 0\n'                          >> "test.sh"
printf '\t fi\n'                                >> "test.sh"
printf 'else\n'                                 >> "test.sh"
printf '\t echo "failure"\n'                    >> "test.sh"
printf '\t exit 1\n'                            >> "test.sh"
printf 'fi'                                     >> "test.sh"

chmod +x "test.sh"
git add content.txt test.sh
git commit -am "initial commit"
git push origin master
