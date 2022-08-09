#!/bin/bash
clear
<<mycomm
THis script is about RAM memeory whenever RAM memory is less than given threshold it will throw an alert using mail server to the recipient. 
mycomm

# TO="incidentissue@dot.com"  to send a mail alert use this script with TO and mail -s command.To continuous monitoring schedule this script with cron job

RAM_Threshold=1700
RAM_USED=$(free -mt | awk '/Total/ { print $ 3 }')

if [[ $RAM_USED -gt $RAM_Threshold ]]
then 
	echo "RAM is consuming more memory than given threshold : Current threshold is $RAM_USED" | mail -s "RAM Used" $(date) $TO
fi
