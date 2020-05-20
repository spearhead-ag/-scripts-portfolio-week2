#!/bin/bash
# set -x

read -p "type the name of the folder you would like to copy: " folderName

#if the name is a valid directory

if [ -d "$folderName" ]; then

    #copy it to a new location
    read -p "type the name of the destination folder: " newFolderName
    cp -r "$folderName" "$newFolderName"
    echo "New folder created."
else

    #otherwise, print an error
    echo "I couldn't find that folder"

fi
exit 0