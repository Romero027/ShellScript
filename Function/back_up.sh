#!/bin/bash

function backup_file () {
  # This function creates a backup of a file.

  # Make sure the file exists.
  # -f checks if the file exists and is a regular file
  if [ -f "$1" ] 
  then
    # Make the BACKUP_FILE variable local to this function.
    # basename returns the file name(e.g. ~/Desktop/a.cpp -> a.cpp)
    # $$ is the process ID (PID) of the script itself.
    # http://www.thegeekstuff.com/2013/05/date-command-examples (date command example)
    local BACKUP_FILE="/tmp/$(basename ${1}).$(date +%F).$$"
    echo "Backing up $1 to ${BACKUP_FILE}"

    # The exit status of the function will be the exit status of the cp command.
    cp $1 $BACKUP_FILE
  else
    # The file does not exist, so return an non-zero exit status.
    return 1
  fi
}

# Call the function
backup_file ~/Desktop/a.cpp

# Make a decision based on the exit status of the function.
# Note this is for demonstration purposes.  You could have
# put this functionality inside of the backup_file function.
if [ $? -eq "0" ]
then
  echo "Backup succeeded!"
else
  echo "Backup failed!"
  # Abort the script and return a non-zero exit status.
  exit 1
fi
