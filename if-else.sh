#!/usr/bin/env bash

if which apache 2>/dev/null 1>/dev/null
then
	echo "apache is installed"
else
	echo "apache is not installed,kindly installed it"
fi
