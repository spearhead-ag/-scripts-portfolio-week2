#!/bin/bash
#set -x

#single entry
echo "Enter name: "
read name
echo "Hi, $name! How are are you?"

#multiple entry
echo "Enter name/s: "
read name1 name2 name3
echo "Hi, $name1, $name2 and $name3! How are are you?"

#entry on single line
read -p "username: " user_name
read -sp "password: " user_pass
echo "Hi, $user_name!"
echo "password: $user_pass"

#enter and read an array
echo "enter name: "
read -a names
echo "Names: ${names[0]}, ${names[1]}"

#read value without var name; entry goes to default reply
echo "enter name: "
read
echo "name: $REPLY"

exit 0