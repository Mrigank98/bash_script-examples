#!/usr/bin/env bash
<<com
a=$(id -u)
[[ $a -eq 0 ]]
if [[ $? -eq 0 ]]
then
	echo "the running user is a root user"
else
	echo "the user is not a root user"
fi
com

user_id=$(id -u)
[[ $user_id -eq 0 ]] && echo "this is a root user" || echo "this is not a root user"
