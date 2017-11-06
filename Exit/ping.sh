#!/bin/bash
#version 1
HOST_NAME="www.google.com"
ping -c 1 ${HOST_NAME}
if [ "$?" -eq 0 ]
	then
	echo "www.google.com is reachable"
else
	echo "www.google.com is not reachable"
fi
