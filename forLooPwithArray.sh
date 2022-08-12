#!/usr/bin/env bash

<<mycom
this script will demonstrate about use of array with for loop and if service is not running then it will send an alert as a mail
mycom

myarray=(docker nginx)
for each in ${myarray[@]}
do
	echo "status of $each is.."
	sudo systemctl status $each 1>/dev/null 2>/dev/null
	if [[ $? -ne 0 ]]
	then
		echo "The status of service $each is not running"
		echo "The status of service $each is not running on this $(hostname -s)" | /usr/bin/mail -s "status of service $each" $date script@info.com
	else
		echo "$each is running"
	fi

done
