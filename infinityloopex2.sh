#!/bin/bash


<<mycom
this for loop will execute and break statement will execute when the count reaches 10 
mycom

clear
echo "this is a for loop with break statement"
count=1

for((;;))
do
	echo "this is a infinite loop"
	((count++))
	sleep 1
	if [[ $count -eq 10 ]]
	then
		break     # break statement will  break the statement and come out of loop , it will not stop execution of script after for loop
	fi
done
        echo "out of scope and loop"
