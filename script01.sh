#!/bin/bash

TOTAL_PAY=0;
COUNT=0;

while read A B C; do
	if [ $B -gt 40 ]; then
		pay=$((40*C+2*(B-40)*C));
		TOTAL_PAY=$((TOTAL_PAY+pay)); 
		COUNT=$((COUNT+1));
		echo $A		 \$$pay;
	else
		pay=$((B*C));
		TOTAL_PAY=$((TOTAL_PAY+pay)); 
		COUNT=$((COUNT+1));
		echo $A 	 \$$pay;
	fi
done < ~/employees.txt

average=$((TOTAL_PAY/COUNT));

echo Number of employees $COUNT;
echo Average pay is \$$average;
