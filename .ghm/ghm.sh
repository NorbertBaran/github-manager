#!/usr/bin/bash
config=/home/$USER/.ghm/config.sh
source $config

if [ $# == 0 ] || [ $1 == "--help" ]; then
  cat $path/help/ghm.txt

elif [ $1 == "signin" ]; then
    if [ $# == 2 ] && [ $2 == "--help" ]; then
      cat $path/help/signin.txt
    else
        $path/signin.sh ${@: 2}
    fi
elif [ $1 == "list" ]; then
    if [ $# == 2 ] && [ $2 == "--help" ]; then
      cat $path/help/list.txt
    else
        $path/list.sh ${@: 2}
    fi
elif [ $1 == "clone" ]; then
    if [ $# == 2 ] && [ $2 == "--help" ]; then
      cat $path/help/clone.txt
    else
        $path/clone.sh ${@: 2}
    fi
elif [ $1 == "public" ]; then
    if [ $# == 2 ] && [ $2 == "--help" ]; then
      cat $path/help/public.txt
    else
        $path/public.sh ${@: 2}
    fi
elif [ $1 == "private" ]; then
    if [ $# == 2 ] && [ $2 == "--help" ]; then
      cat $path/help/private.txt
    else
        $path/private.sh ${@: 2}
    fi
elif [ $1 == "delete" ]; then
    if [ $# == 2 ] && [ $2 == "--help" ]; then
      cat $path/help/delete.txt
    else
        $path/delete.sh ${@: 2}
    fi
elif [ $1 == "uninstall" ]; then
    if [ $# == 2 ] && [ $2 == "--help" ]; then
      cat $path/help/uninstall.txt
    else
        $path/uninstall.sh
    fi
fi