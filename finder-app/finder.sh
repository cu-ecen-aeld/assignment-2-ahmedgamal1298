#!/bin/bash

IFS="/"

if [ $# == 2 ];then
	echo "arguments passed successfully"
	filesdir=$1
	path="${filesdir%/*}"
	searchstr=$2
	if [ ! -d "$path" ];then
		echo "filesdir does not represent a directory on the filesystem"
		exit 1
	else
		cd "$filesdir"
		Y=$(grep -nr $searchstr  | wc -l)
		X=$(grep -nlr $searchstr | wc -l)
		echo "The number of files are ${X} and the number of matching lines are ${Y}"	
	fi	 

else
	if [ $# -lt 2 ];then
		echo "passed arguments are not complete less than 2"
	else
		echo "passed arguments are greater than 2 only two argments are expected"
	fi		
	
	exit 1
fi		
