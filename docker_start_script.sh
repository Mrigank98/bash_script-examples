#!/bin/bash

if [[ $(id -u) -eq 0 ]]
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
     if [[ $(sudo -v) -eq 0 ]] 1>/dev/null 2>/dev/null
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
	      echo "you're not authoried user"
     fi
fi
