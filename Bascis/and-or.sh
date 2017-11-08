#!/bin/bash

DEBUG1=true
#echo will be executed only if the first command have return value 0
${DEBUG1} && echo "DEBUG1"


#echo will be exectuted only if the first command return non-zero value
DEBUG2=false
${DEBUG2} || echo "DEBUG2"

#In this case echo will not be executed
DEBUG2=true
${DEBUG2} || echo "DEBUG2"

#In this case echo will not be executed
DEBUG4=false
${DEBUG4} && echo "DEBUG4"
