limit=1000
if ([ $# -eq 2 ] || [ $# -eq 3 ]) && [ ${@: -2:1} == "--limit" ] && [[ ${@: -1} =~ ^[0-9]+$ ]]; then
    limit=${@: -1}
fi

if (( $#%2 == 0 )); then
    echo "$limit"
else
    echo "$1 $limit"
fi