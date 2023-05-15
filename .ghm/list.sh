#!/usr/bin/bash

if [ $# -eq 0 ]; then
    gh repo list --limit 1000 | awk '{print $1;}'
elif [ $# -eq 1 ] && [[ $1 == "--public" || $1 == "--private"]]
    gh repo list $1 --limit 1000 | awk '{print $1;}'
elif [ $# -eq 1 ]
    gh repo list --limit 1000 | awk '{print $1;}' > $1
elif [ $# -eq 2 ]; then
    gh repo list $2 --limit 1000 | awk '{print $1;}' > $1
fi