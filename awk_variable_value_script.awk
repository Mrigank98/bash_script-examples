#!/bin/awk -f

BEGIN{
print "Reading a variable from ab.txt file using awk script"
}
{
a=$1
b=$2
print "a="a
print "b="b
}
END{
print "Variable reading is now completed"	
}

