#!/bin/bash
clear
<<com
if [[ $(sudo -v) -eq 0 ]]
then
	echo "the user $(id -un) is having sudo access on this host $(hostname)"
else
	echo "the user $(id -un) is not having sudo access on this host $(hostname)"
fi
com

sudo -v 1>/dev/null 2>/dev/null && echo "the user $(id -un) is have a sudo privilege on this host $(hostname)" || echo "the user $(id -un) is not have a sudo access on this host $(hostname)"
