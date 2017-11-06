#!/bin/bash
#show how to use for loop
STRING_ARRAY="man bear pig dog cat sheep"

for STRING in $STRING_ARRAY
do
	echo "${STRING}"
done