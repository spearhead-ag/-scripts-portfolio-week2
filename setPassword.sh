#!/bin/bash
#set -x

#user enters foldername
read -p "type the name of the folder you would like to create: " folderName

#creates folder and filename 'secret.txt'
mkdir $folderName && touch $folderName/secret.txt

#user enter password
read -sp "enter password: " password

#password saved to 'secret.txt' under foldername given
echo -n "$password" | sha256sum >> $folderName/secret.txt

echo -e "\nPassword saved."

exit 0