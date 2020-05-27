# ================================== #
# This script runs a case statement  #
# ================================== #
#!/bin/bash
#set -x
file="./result"
bash ~/scripts/portfolio/week2/passwordCheck.sh > result
while IFS= read -r line; do
    if [[ "$line" == "Access Granted" ]]; then
        pass="Access Granted"
        echo $'\n'
        echo $pass
        echo $'\n'
    fi
done <"$file"

#denies access if password does not exists
if [ "$pass" == "Access Granted" ]; then
    echo "1. Create folder"
    echo "2. Copy folder"
    echo "3. Set password"
    echo "4. Quit"
    echo $'\n'
    read -p "Enter option: " opt
    case $opt in
      1)bash ~/scripts/portfolio/week2/foldermaker.sh
      ;;
      2)bash ~/scripts/portfolio/week2/foldercopier.sh
      ;;
      3)bash ~/scripts/portfolio/week2/setPassword.sh
      ;;
      4)echo "Quitting"
      ;;
      *)echo "Invalid entry $REPLY"
      ;;
    esac 
    exit 0
else
    pass="Access Denied"
    echo $'\n'
    echo $pass
    exit 1
fi