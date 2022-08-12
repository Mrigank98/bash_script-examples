#!/bin/bash

<<mycom
this script will show the difference between $* and $@
mycom


echo "the below output if for \$*"
for each in "$*"
do
	echo $each
done

echo "the below output is for \$@"
for each in "$@"
do
	echo $each
done

