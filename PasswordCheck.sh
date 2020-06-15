# ===================================== #
# This script validates password input  #
# Created by Anna Garay on 14 June 2020 #
# ===================================== #
#!/bin/bash
#set -x

#enters password and stores at var "hash"
read -sp "Enter password:" password
hash=$(echo -n "$password" | sha256sum)

#password directory path and storage filename
file="./secret.txt"
 
#reads secret.txt line by line 
while IFS= read -r line; do
    #validates password input and grants access
    if [[ "$hash" == "$line" ]]; then
        pass="Access Granted"
        echo $'\n'
        echo $pass
    fi
done <"$file"

#denies access if password does not exists in secret.txt
if [ "$pass" == "Access Granted" ]; then
    exit 0
else
    pass="Access Denied"
    echo $'\n'
    echo $pass
    exit 1
fi

#waits 3secs until exits
read -t 3 -p " "

exit 0