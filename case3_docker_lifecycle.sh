#!/usr/bin/env bash

<<mycom
this script will execute docker lifecycle using case statement
mycom

if [[ $(id -u) -ne 0 ]]
then
	echo "you're not a root user , action can't be executed"
	exit 1
fi

read -p "please select your option(1.status, 2.start, 3.stop, 4.version,5.restart): " opt

case $opt in

	1)
		echo "status of docker"
		sudo systemctl status docker
		;;
	2)
		echo "starting docker....."
		sudo systemctl start docker
		;;
	3)
		echo "stopping docker..."
		sudo systemctl stop docker
		;;
	4)
		version=$(docker -v | cut -d "," -f 1 )
		echo "docker version is: $version"
		;;
	5)
		echo "restart docker..."
	        sudo systemctl restart docker
		;;
	*)
		echo "you've selected an invalid option"
esac


