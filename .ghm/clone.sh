#!/usr/bin/bash

if [ $# -eq 0 ]; then
  read -p "Confirm you really want to clone all your repositories [y/n]: " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
  gh repo list --limit 1000 | while read -r repo _; do
    gh repo clone "$repo"
  done
elif [ $# -eq 1 ]; then
  cat $1
  read -p "Confirm you really want to clone above repositories [y/n]: " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
  cat $1 | while read -r repo _; do
    gh repo clone "$repo"
  done
fi