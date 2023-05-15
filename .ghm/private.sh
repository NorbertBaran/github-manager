#!/usr/bin/bash

if [ $# -eq 0 ]; then
cat << EOF
Making repositories private is danger operation.
You need to specify list of repositories you really want to make private.
You can do it selecting repositories from list of your all repositories generated using 'ghm list <filename>' command.
If you really want to make private all your repositories use --private-all and --force flags.
Note that changing repository visibility to private will cause loss of stars and watchers.

For more information use command 'ghm private --help'
EOF
elif [ $# -eq 1 ]; then
cat $1
read -p "Confirm you really want to make private above repositories [y/n]: " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
cat $1 | while read -r repo _; do
  gh repo edit $repo --visibility  private
done
elif [ $# -eq 2 ] && [ $1 == "--private-all" ] && [ "--force" ]; then
  read -p "Confirm you really want to make private all your repositories [y/n]: " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
  gh repo list --limit 1000 | while read -r repo _; do
    gh repo edit $repo --visibility private
  done
fi