#!/bin/bash
#
#even numbers
#

#for i in {1..100}
#do

echo "Enter a Number : "
read i

if [ $((i % 2)) -eq 0 ] 
then
echo "$i even no"
else
	echo "$i odd no"
fi
#done

