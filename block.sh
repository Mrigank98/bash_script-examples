#!/bin/bash
clear
{ echo "docker path is: $(which docker)" ; docker -v ; } && echo "docker is installed in this system" || echo "docker is not installed in this system"
