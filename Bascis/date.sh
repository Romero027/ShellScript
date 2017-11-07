#!/bin/bash
#gracefully handle instances where there are no ".jpg" files in the
#current directory. 

#-s
#Enable (set) each optname.
#nullglob
#If set, Bash allows filename patterns which match no files to expand to a null string,
#rather than themselves.


shopt -s nullglob

for FILE in *.jpg
do	
	mv $FILE $(date +%F)-${FILE}
done