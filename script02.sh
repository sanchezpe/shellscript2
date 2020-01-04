#!/bin/bash

SUM_PASSED=0;
SUM_FAILED=0;

SUM=0;
AVERAGE=0;

while read A B C D E F G H; do
	SUM=$((D+E+F+G+H));
	AVERAGE=$((SUM/6));
	
	if [ $AVERAGE -ge 60 ]; then
		SUM_PASSED=$((SUM_PASSED+1));
	else
		SUM_FAILED=$(($SUM_FAILED+1));
	fi
	
	echo $B $C $AVERAGE;
done < ~/students.txt

echo Pass: $SUM_PASSED;
echo Fail: $SUM_FAILED;
