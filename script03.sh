#!/bin/bash

while read A B C D E F G H; do
	if [[ "$1" == "$C" ]]; then
		COUNT=$((COUNT+1));
		echo $A $B $C;
	fi
done < ~/students.txt
echo Number of students $COUNT;
