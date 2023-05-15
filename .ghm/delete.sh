#!/usr/bin/bash

if [ $# -eq 0 ]; then
cat << EOF
Deleting repositories is danger operation.
You need to specify list of repositories you really want to delete.
You can do it selecting repositories from list of all your repositories generated using 'ghm list <filename>' command.
If you really want to delete your all repositories use --delete-all and --force flags.

For more information use command 'ghm delete --help'
EOF
elif [ $# -eq 1 ]; then
  cat $1
  read -p "Confirm you really want to delete above repositories [y/n]: " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
  cat $1 | while read -r repo _; do
    gh repo delete $repo --confirm
  done
elif [ $# -eq 2 ] && [ $1 == "--delete-all" ] && [ "--force" ]; then
  read -p "Confirm you really want to delete all your repositories [y/n]: " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
  gh repo list --limit 1000 | while read -r repo _; do
    gh repo delete $repo --confirm
  done
fi