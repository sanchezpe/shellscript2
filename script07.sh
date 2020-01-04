#!/bin/bash

if [[ $(rev <<< $1) == "$1" ]]; then
	echo $1 is a palindrome!
else
	echo $1 is not a palindrome
fi
