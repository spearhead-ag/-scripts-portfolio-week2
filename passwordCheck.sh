#!/bin/bash
#set -x

#enter password
read -sp "password:" password

# while loop checks only one line
file="./secret.txt"
while IFS= read -r line ; do
#   echo "Testing $line: "
    pass="$(printf "$line")"
    if [[ "$pass" = "$password" ]] ; then
        echo $'\n'
        echo "Access Granted."
        exit 0
    else
        echo $'\n'
        echo "Access Denied."
        echo "Goodbye."
        exit 1
    fi
done <"$file"