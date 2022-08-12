#!/bin/bash


<<mycom
break statement will terminate/exut current loop completely before the actual ending of the loop
mycom

cnt=1
for each_file in $(ls)
do

  if [[ $cnt -eq 1 ]]

  then 

     echo "$each_file"
     break

     ((cnt++))

  fi
done

<<myscom
for a in $(seq 1 10 )
do
	if [[ $a -eq 5 ]]
	then 
	      continue
        fi
        echo "$a"	
done
myscom
