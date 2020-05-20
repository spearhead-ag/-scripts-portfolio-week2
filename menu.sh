#!/bin/bash
#set -x
bash ~/scripts/portfolio/week2/passwordCheck.sh

#echo $continue
#if [ "$continue" = "Access Granted." ]; then

    PS3="Select option: "
    #prints selection
    select var in "CreateFolder" "CopyFolder" "SetPassword" "Quit"
    #perform corresponding bash script
    do
    case $var in
        CreateFolder)
            bash ~/scripts/portfolio/week2/foldermaker.sh
            ;;
        CopyFolder)
            bash ~/scripts/portfolio/week2/foldercopier.sh
            ;;
        SetPassword)
            bash ~/scripts/portfolio/week2/setPassword.sh
            ;;
        Quit)
            echo "Quitting"
            break;
            ;;
        *)
            echo "Invalid entry $REPLY"
            ;;
    esac
    done
#fi