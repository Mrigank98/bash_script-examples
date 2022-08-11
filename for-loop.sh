#!/usr/bin/env bash

<<mycomm
this script will demonstrate about for loop , we will test if a file has a execution on it or not. 
mycomm


for each in a=$(ls)
do
	if [[ -x $each ]] 
	then
		echo "file has a execution condition"
	else
		echo "file is not having a execution condition"
	fi
done
