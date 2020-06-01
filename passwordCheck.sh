# ===================================== #
# This script validates password input  #
# ===================================== #
#!/bin/bash
#set -x

#user enters password
read -sp "Enter password:" password

#password directory path and storage filename
file="./secret.txt"

#checks and compares password input against password lists 
while IFS= read -r line; do
    #grants access if password input is valid
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

exit 0