#!/bin/bash

# First we check to make sure all variables exist

if [ -z $1 ]; then
	echo "Failed! Missing either (web)  or (server)"
	exit -1
else
	echo "Passed 1st check!"
fi

if [ -z $2 ]; then
	echo "Failed! Missing the target dir to house the clone!"
	exit -1
else
	echo "Passed 2nd check!"
fi
# Now we are checking to see if the housing directory exists
echo "Checking to see if the directory exists!"
if [ -d $2 ]; then
	echo "Passed 3rd check!"
else
	echo "The target dir does not exist!"
	exit -1
fi

folder_name=${1}$(date +"%Y-%m-%d@%T")
mkdir ${2}'/'${folder_name}

if [ $1 == "web" ]; then
	./clone_github_repo_website.sh $2
else
	./clone_github_repo_server.sh $2
fi
