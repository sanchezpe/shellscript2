#!/bin/bash

palindrome(){
	if [[ $(rev <<< $1) == "$1" ]]; then
		echo $1 is a palindrome!
	else
		echo $1 is not a palindrome
	fi
}

declare -a words=(anna pablo level madam sir noon radar jenna)

for word in ${words[@]}; do
	palindrome $word;
done;
