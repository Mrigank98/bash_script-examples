#!/bin/bash

<<mycom
This script will demonstrate the proper way of handling command line arguments passing to any script
if this script script will run by any user without knowing , how many arguments to pass there is a condition described which will ask user to run the script as follows.
if the arguments are less than 2 script will not execute because there is a exit code 1 
mycom


<<mycom1
if [[ $# -ne 2 ]]
then
	echo "Hey, please run this script as follows"
	echo "usage: $0 , <servicename> <ActionToExecuteonService>"
	echo "ValidActionONServices are: status start stop restart"
	exit 1
fi
mycom1

#One way to perform this activity
#action=$1
#servicename=$2
#sudo systemctl $action ${servicename}


#Another way to perform the same activity which is not much recommended 

read -p "enter your service to execute your action on: " servicename
read -p "enter your action to execute on your service: $servicename " action
sudo systemctl $action ${servicename}
