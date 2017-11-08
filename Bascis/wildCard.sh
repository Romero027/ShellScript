#!/bin/bash 

# *.sh will be expanded as a list of file
for FILE in ~/Desktop/Github/ShellScript/Bascis/*.sh
do
    echo "Copying $FILE"
    cp $FILE ~/Desktop
done
