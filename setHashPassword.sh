#!/bin/bash
#set -x

#user enters foldername
read -p "type the name of the folder you would like to create: " folderName

#creates folder and filename 'secret.txt'
mkdir $folderName && touch $folderName/secretHash.txt

#user enter password
read -sp "enter password: " password

#password saved to 'secret.txt' under foldername given
echo "$password" | sha256sum >> $folderName/secretHash.txt

echo -e "\nPassword saved."

exit 0