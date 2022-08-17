BEGIN{ 
	print "======"
} 
/root/ {
	print $0 
} 
END{
	print "====="
}

