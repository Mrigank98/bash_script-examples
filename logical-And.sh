#!/usr/bin/env bash

#THis is an example demonstrate about logical And operator

read -p "please enter a number: " num

#if [[ $num -ge 20 ]] && [[ $num -le 40 ]]  # This is the first way to declare logical And operator 


#if [[ $num -ge 20 && $num -le 40 ]]   This is second way to declare logical AND operator and mostly used way 

#if [ $num -ge 20 -a $num -le 40 ]  This is old way to declare logical AND operator if ( -a option is using instead of && always put one square bracket )
then
	echo "number is in the range of 20-40"
else
	echo "number is not in the range of 20-40"
fi
