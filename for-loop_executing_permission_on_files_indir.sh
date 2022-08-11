#!/usr/bin/env bash
clear


<<mycom
this script will execute for loop and will check if the files under given directory is having execute permission or not
mycom

if [[ $# -ne 1 ]]
then
	echo "you have not specified directory path"
	exit 1
fi

dir_path=$1
for each in $(ls $dir_path)
do 

    if [[ -x $each ]] 
    then

       echo "$each has a exection permission on it"

    else

       echo "$each is not having a execution permission on it"

    fi

done
