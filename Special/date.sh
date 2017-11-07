#!/bin/bash

for FILE in *.jpg
do	
	mv $FILE $(date +%F)-${FILE}
done