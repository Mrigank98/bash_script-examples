#!/bin/bash

return_variable()
{
  local x=9
  return $x
}

return_variable
y=$?
echo "the value of variable y is: $y"
