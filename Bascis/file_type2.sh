#!/bin/bash
#accepts the file or directory name as an argument
for FILE in $@
do
	if [ -d ${FILE} ]
		then 
		echo "${FILE} is a directory"
	elif [ -x ${FILE} ]
		then
		echo "${FILE} is executable by you"
	elif [ -f ${FILE} ]
		then 
		echo "${FILE} is a regular file"
	elif [ -e ${FILE} ]
		then
		echo "${FILE} doesn't exist "
	else
		echo "${FILE} is not a directory/regular file"
	fi
done