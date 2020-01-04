#!/bin/bash

FILE=$1

permissions=`ls -l $FILE | awk '{print $1}'`

for string in permissions; do
	
	first=0;
	second=0;
	third=0;
	
	if [ "${permissions:1:1}" == "r" ]; then first=$((first+4)); fi
	if [ "${permissions:2:1}" == "w" ]; then first=$((first+2)); fi
	if [ "${permissions:3:1}" == "x" ]; then first=$((first+1)); fi
	
	if [ "${permissions:4:1}" == "r" ]; then second=$((second+4)); fi
	if [ "${permissions:5:1}" == "w" ]; then second=$((second+2)); fi
	if [ "${permissions:6:1}" == "x" ]; then second=$((second+1)); fi
	
	if [ "${permissions:7:1}" == "r" ]; then third=$((third+4)); fi
	if [ "${permissions:8:1}" == "w" ]; then third=$((third+2)); fi
	if [ "${permissions:9:1}" == "x" ]; then third=$((third+1)); fi
	
	echo $FILE $first$second$third
done
