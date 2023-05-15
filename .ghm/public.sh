#!/usr/bin/bash

if [ $# -eq 0 ]; then
cat << EOF
Making repositories public is danger operation.
You need to specify list of repositories you really want to make public.
You can do it selecting repositories from list of your all repositories generated using 'ghm list <filename>' command.
If you really want to make public all your repositories use --public-all and --force flags.
Be sure you do not public any repositories with sensitive data.

For more information use command 'ghm public --help'
EOF
elif [ $# -eq 1 ]; then
  cat $1
  read -p "Confirm you really want to make public above repositories [y/n]: " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
  cat $1 | while read -r repo _; do
    gh repo edit $repo --visibility  public
  done
elif [ $# -eq 2 ] && [ $1 == "--public-all" ] && [ "--force" ]; then
  read -p "Confirm you really want to make public all your repositories [y/n]: " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
  gh repo list --limit 1000 | while read -r repo _; do
    gh repo edit $repo --visibility public
  done
fi