#!/bin/bash
set -x

#enter password
read -sp "password:" password
echo -n "$password" | sha256sum

#converts password to sha256
hash="$(echo -n "$password" | sha256sum )"

file="./secretHash.txt"
while IFS= read -r line ; do
    echo "Testing $line : "
    pass="$(printf "$line")"
    if [[ "$pass" = "$hash" ]] ; then
        echo "Access Granted."
        exit 0
    else
        echo "Access Denied."
        exit 1
    fi
done <"$file"