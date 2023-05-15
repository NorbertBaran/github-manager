if [ $# -eq 0 ]; then
    echo "opt1"
elif [ $# -eq 1 ]; then
    echo "opt2"
elif [ $# -eq 2 ] && [ $1 == "--limit" ] && [[ $2 =~ ^[0-9]+$ ]]; then
    echo "opt3"
elif [ $# -eq 3 ] && [ $2 == "--limit" ] && [[ $2 =~ ^[0-9]+$ ]]; then
    echo "opt4"
else
    echo "err"
fi