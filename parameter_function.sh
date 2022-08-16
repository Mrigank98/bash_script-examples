#!/bin/bash
clear

<<mycom
this script will demonstrate about script how to pass a parameter in a function
mycom


myfunc()
{
    echo "\$0 value is: $0"
    x=$1
    y=$2
    sum=$((x+y))
    echo "The sum of two number is : $sum"
}
m=10
n=20
myfunc $m $n

p=20
q=30
myfunc $p $q

myfunc 50 60
