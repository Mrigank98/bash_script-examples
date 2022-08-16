#!/bin/bash

<<mycom1
define_variable()
{
  local x=10
  echo "$x"
}

y=$(define_variable)     #To display local variable outside the function using a variable and stored function in that variable and display
echo "The value of y is: $y"
mycom1


#We will be now using return command to retrieve the value of local variable

mydef()
{
  local x=20
  return $x
}

mydef
y=$?
echo "THe value of y is: $y"
