#!/usr/bin/env bash

<<mycom
This example is going to demonstrate about use of Logical OR operator
mycom


read -p "enter your choice: (yes/no) " opt
if [[ $opt == "yes" || $opt == "y" ]]
then
     if systemctl status docker 1>/dev/null 2>/dev/null

    then 

	echo "docker is already up and running"

    else

	echo "docker is starting up......"

	sudo systemctl start docker 

	echo "docker is started successfully"

   fi

else	
	echo "skipping starting docker"
fi
