#!/bin/bash
while getopts ":s:f:" opt; 
do
	case $opt in 
		s) num=$OPTARG
		   echo "num is $num";;
		f) filename=$OPTARG
		   echo "File is $filename";;
		\?) echo "Dont know how to use this 'sh getops.sh -s [int] -f [filenamewithmarksand names]' "
			exit 1;;
	esac
done
shift $(($OPTIND - 1))
sort -nr $filename | head -"${num:-2}"
