#!/bin/bash
function number(){

	local COUNT=$(ls | wc -l)
	echo " There are ${COUNT} files in current directory"
}
number