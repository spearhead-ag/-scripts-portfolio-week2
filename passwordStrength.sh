#!/bin/bash

echo "enter password: "
read password
len="${#password}"
if test $len -ge 8 ; then
echo "$password" | grep -q [0-9]
	if test $? -eq 0 ; then
	echo "$password" | grep -q [A-Z]
		if test $? -eq 0 ; then
		echo "$password" | grep -q [a-z]
			if test $? -eq 0 ; then
			echo "$password" | grep -q [$,@,#,%]
				if test $? -eq 0 ; then
				echo "Strong Password"
				else
				echo "weak password include special characters"
				fi
			else
			echo "weak password include lower characters"
			fi
		else	
		echo "weak password capital characters"
		fi
	else 
	echo "Please include the numbers in password. It is weak password."
	fi
else
echo "Password length should be greater than or equal to 8 characters. Hence, weak password."
fi


