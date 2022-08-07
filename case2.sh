#!/bin/bash

clear

read -p "enter a num: " num

case $num in

       [0-9]) 

            echo "you've have selected a single digit integer"

            ;;



        [a-z])

            echo "you've selected lower range character"

            ;;

esac   
