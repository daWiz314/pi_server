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

folder_name=${1}$(date +"%Y-%m-%d@%T")
path_to_folder=${2}'/'${folder_name}
mkdir path_to_folder

if [ $1 == "web" ]; then
	./.clone_github_repo_website.sh $path_to_folder
	exit 1
else
	./.clone_github_repo_server.sh $path_to_folder
	exit 1
fi
