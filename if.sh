#!/bin/bash

<< mycom
if which docker 
then
	echo "docker is installed in this os: $(which docker)"
	echo "docker version is: $(docker -v)"
fi
mycom

which docker
if [[ $? -eq 0 ]]
then
	echo "docker is installed"
	echo "docker version: $(docker -v)"
fi
