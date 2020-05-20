#! /bin/bash

#val_a=25
#val_b=20

# -eq demonstration
#if [ "$val_a" -eq "$val_b" ] 
#then
#	echo "The integers are the same." 
#else
#	echo "The integers are NOT the same."
#fi

# -ne demonstration
#if [ "$val_a" -ne "$val_b" ] 
#then
#       echo "The integers are NOT same." 
#else
#       echo "The integers are the same."
#fi

# -gt demonstration
#if [ "$val_a" -ne "$val_b" ] 
#then
#       echo "val_a is greater thatn val_b." 
#else
#       echo "val_a is not greater t#han val_b."
#fi

#UV Index Recommendation Calculator
	# 0-2 Low (Minimal protection required)
	# 3-7 Moderate to High (Standard protection required)
	# 8+ Very High to Extreme (Full protective measure required)

read -p "Enter a UV index value from 0 to 11: " uvvalue

if [ "$uvvalue" -le 2 ]; then
	echo "UV level is low. Minimal protection required."
elif [[ "$uvvalue" -ge 3 ]] && [[ "$uvvalue" -le 7 ]]; then
	echo "UV level is moderate to high. Standard protection required."
elif [[ "$uvvalue" -ge 8 ]] && [[ "$uvvalue" -le 11 ]]; then
	echo "UV level is very high to extreme. Full protection measures required."
else
	echo "Invalid UV index value entered."
fi

exit 0 
