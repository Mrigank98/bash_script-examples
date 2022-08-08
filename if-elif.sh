#!/usr/bin/env bash

clear

<<mycom
This script will demonstrate usage of if-elif-elif-else statement in bash
we will write a script for docker cycle which includes, status, start,stop,restart
this script will be only executed if the user is a root or have sudo access
mycom

if [[ $(sudo -v ) -ne 0 ]]
then
	echo "you are not authrozed user to perform this activity"
	exit 1           # Exit, will simply exit the code it will not allow to process further if the user is not have sudo privilege 
fi

read -p "enter your option: " option

if [[ $option == status ]]
then
	systemctl status docker 

elif [[ $option == start ]]
then
	echo "docker is starting"
	sudo systemctl start docker

elif [[ $option == stop ]]
then
	echo "docker is stopping..."
	sudo systemctl stop docker

elif [[ $option == version ]]
then
	version=$(docker -v | cut -d "," -f 1)
	echo "docker version is: $version"

elif [[ $option == restart ]]
then
	echo "docker is restarting"
	sudo systemctl restart docker
else
	echo "you've not selected valid option"
fi

