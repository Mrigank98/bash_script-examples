#!/bin/bash

clear


<<mycom1
The below script will demonstrate about working of function 

myfunc()
{
  echo "my function is: myfunc"
}

myfunc
echo "================"
echo "my function is defined successfully"
mycom1


read_inputs()
{
  read -p "enter a first number: " num1
  read -p "enter a second number: " num2
}

addition()
{
  sum=$((num1+num2))
  echo "The sum of two number is: $sum"
}

subtraction()
{
   sub=$((num1-num2))
   echo "The difference of two number is: $sub"

}

multiplication()
{
  mul=$((num1*num2))
  echo "THe multiplication of two number is: $mul"

}

read_inputs
addition
subtraction
multiplication
