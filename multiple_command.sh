#!/bin/bash

#This script will helpful when executing commands on multiple server from a local server and result of output will be displayed on local server
#There are two ways one using specifying individual and other using for loop

<<mycom
echo "the date output on the server is: <remote-server>"
sshpass -f <file of pass> ssh -o  StrictHostKeyChecking=No automation@<remote-server ip> "date"
echo "==========================================================================="

echo "the uptime output on the server is: <remote-server>"
sshpass -f <file of pass> ssh -o  StrictHostKeyChecking=No automation@<remote-server ip> "uptime"

echo "==========================================================================="
echo "The free -m  output on the server is: <remote-server>"
sshpass -f <file of pass> ssh -o  StrictHostKeyChecking=No automation@<remote-server ip> "free -m"
mycom



<<mycom1
for each_ser in 10.100.2.3 10.100.2.4
#for each_ser in $(cat inventory)   when we have multiple server we can store server's in inventory file instead of declaring individual server
do
	echo "executing command on $each_ser"
	echo "============================="
	
	for each_cmd in date uptime free -m
	do
		echo "The $each_cmd output on the server is: $each_ser"
         	sshpass -f <file of pass> ssh -o  StrictHostKeyChecking=No automation@<each_ser> "$each_cmd"
		echo "========================================================="
	done
done
mycom1
