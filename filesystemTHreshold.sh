#!/bin/bash
clear

<<mycom
This script will monitor the file system threshold and it will trigger a mail when threshold percent hit the defined threshold, to automate this schedule a job using crontab 
mycom

TO=noreply@info.com
filesystem=$(df -h | grep -E "/dev/root" | awk '{ print $5 }' | sed 's/%//')

if [[ $filesystem -gt 50 ]] 
then
	echo -e "file system is above than 45% for the $(date) and is currently at: $filesystem\nmail -s $TO $filesystem $(date)"
fi
