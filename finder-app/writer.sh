#!/bin/bash

IFS="/"

if [ $# == 2 ];then
	echo "arguments passed successfully"
	writefile=$1
	path="${writefile%/*}"
	writestr=$2
	if [ ! -d "$path" ];then
		mkdir -p "$path"
	fi
	echo "$writestr">"$writefile"	 

else
	if [ $# -lt 2 ];then
		echo "passed arguments are not complete less than 2"
	else
		echo "passed arguments are greater than 2 only two argments are expected"
	fi		
	
	exit 1
fi		
