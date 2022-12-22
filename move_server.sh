#!/bin/bash
# This will move the downloaded server to the correct location

if [ -z $1 ]; then
	echo "No dir was passed!"
	exit -1
else 
	if [ -d $1 ]; then
		echo "The path to the target file(s) does not exist!"
		exit -1
	else
		echo "Moving target file(s)"
		mv $1 ./
		exit 1
	fi
fi
