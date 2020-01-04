#!/bin/bash

INDEX=0;
NUM=1;

while [ $NUM -gt 0 ]; do
	read -p "Enter a number: 	" NUM
	if [ $NUM -gt 0 ]; then
		ARRAY[INDEX]=$NUM;
		INDEX=$((INDEX+1));
	fi
done

SUM=0;
MAX=${ARRAY[0]};
MIN=${ARRAY[0]};

for number in ${ARRAY[@]}; do
	SUM=$((SUM+number));
	
	if [ $number -gt $MAX ]; then MAX=$number; fi
	if [ $number -lt $MAX ]; then MIN=$number; fi
	
done

AVG=$((SUM/INDEX));

echo Sum 	$SUM;
echo Average	$AVG;
echo Min	$MIN;
echo Max	$MAX;
