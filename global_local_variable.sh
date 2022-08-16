#!/bin/bash

<<mycom

Variable: The name given to a memory location that is used to store values in a program is called variables. It stores information that can be called and manipulated wherever needed in the program.


Scope: The part or extent of the program where the variable is accessible or said to be alive.


Based on the scope of the variable, it is of two types:


Local variable: those variables whose scope is within the function where it is declared( can be accessed within the declared block or function in the program)


Global variable: these variables can be accessed globally in the entire program.
mycom

function myfunc
{
  y=10
  echo "THe value of variable of x is:$x"
   x=20
  local z=30

}

x=15
myfunc
echo "the value of the variable y is: $y"
echo "the value of x after calling function: $x"
echo "the value of z i: $z"


