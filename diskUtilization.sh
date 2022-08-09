#!/usr/bin/env bash
clear
<<mycom
This script will compare the actual available space with threshold available space , if available space is less than threshold space then it will result alert message
mycom

Disk_Avail_Threshold=9000
Disk_avail=$(df -m /var | awk '{ print $ 4 } ' |grep -Ev "Available")

if [[ $Disk_avail -lt Disk_Avail_Threshold ]] 
then

	echo "your disk is less then available threshold please free some space\ncurrent space is: $Disk_avail $(date)"
else
	echo "your disk is enough free for allocation: $Disk_avail"
fi
