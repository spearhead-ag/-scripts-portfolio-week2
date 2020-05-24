# ===================================== #
# This script validates password input  #
# ===================================== #
#!/bin/bash
#set -x

#user enters password
read -sp "Enter password:" password
#echo $password

#storage path of passwords 
file="./secret.txt"

#checks each line, compares given password and grants access if valid
while IFS= read -r line; do
     if [[ "$password" == "$line" ]]; then
        pass="Access Granted"
        echo $'\n'
        echo $pass
    fi
done <"$file"

#denies access if password does not exists
if [ "$pass" == "Access Granted" ]; then
    exit 0
else
    pass="Access Denied"
    echo $'\n'
    echo $pass
    exit 1
fi