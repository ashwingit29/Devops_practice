#!/bin/bash




# divisible by 3 and divisible by , not by 15



for i in {1..100} 
do
	if { [ $((i % 3)) -eq 0 ] || [ $((i % 5)) -eq 0 ]; } && [ $((i % 15)) -ne 0 ]
then
	echo $i
fi
done

