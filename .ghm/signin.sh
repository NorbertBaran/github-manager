stty -echo
printf "Token: "
read TOKEN
stty echo
printf "\n"

echo $TOKEN | gh auth login --with-token