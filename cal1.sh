#!/usr/bin/env bash

clear

read -p "enter a first number: " a

read -p "enter a second number: " b



echo "=========calculator option======"

echo "1.addition"

echo "2.subtraction"

echo "3.multiplication"

echo "4.division"

echo "5.invalid"



echo "===================================="

read -p "choose an option from the given list: " opt

case $opt in

      1)

            echo "you've have selected an addition option"

            echo "addition of two number $a and $b is: $((a+b))"

            ;; 



      2)

            echo "you've have selected an subtraction option"

            echo "subtraction of two number $a and $b is: $((a-b))"

            ;; 



      3)

            echo "you've have selected an multiplication option"

            echo "multiplication of two number $a and $b is: $((a*b))"

            ;; 

       

       4)

            echo "you've have selected an divisin option"

            echo "division of two number $a and $b is: $((a/b))"

            ;; 



       5)

            echo "you've selected an invalid option, please select a valid option"

esac
