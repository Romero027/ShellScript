#!/bin/bash
#For more information about read:http://linuxtechlab.com/9-bash-scripting-user-input-read-command-redirection/
read -p "Please enter a file extension: " EXTENSION
read -p "Please enter a file prefix: (Press ENTER for ${DATE}) " PREFIX

for FILE in *.${EXTENSION}
do
	if [ -z PREFIX ]
		then 
			echo "Renaming $FILE to $(date +%F)-${FILE}"
			mv $FILE $(date +%F)-${FILE}
	else
		echo "Renaming $FILE to ${PREFIX}-${FILE}"
		mv $FILE ${PREFIX}-${FILE}
	fi
done
