#!/bin/bash
#prompts the user for a name of a file or directory and reports if it is a
#regular file, a directory, or other type of file
read -p "Enter a file name: " FILE

if [ -d ${FILE} ]
	then 
	echo "${FILE} is a directory"
	exit 0
elif [ -f ${FILE} ]
	then 
	echo "${FILE} is a regular file"
	exit 1
elif [ -x ${FILE} ]
	then
	echo "${FILE} is executable by you"
	exit 2
elif [ -e ${FILE} ]
	then
	echo "${FILE} doesn't exist "
	exit 3
else
	echo "${FILE} is not a directory/regular file"
	exit 4
fi