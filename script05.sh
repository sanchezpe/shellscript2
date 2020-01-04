#!/bin/bash

CAPITAL=0;
LOWER=0;
DIGIT=0;
OTHER=0;

if [ $# -lt 1 ]; 
	then echo Illegal input, did not receive any parameters
	exit;
else
	for input in $@; do
		case $input in
			[A-Z]*) CAPITAL=$((CAPITAL+1));;
			[a-z]*) LOWER=$((LOWER+1));;
			[0-9]*) DIGIT=$((DIGIT+1));;
			*) OTHER=$((OTHER+1));;
		esac
	done
fi
echo Capital $CAPITAL;
echo Lower case $LOWER;
echo Digit $DIGIT;
echo Other $OTHER;
