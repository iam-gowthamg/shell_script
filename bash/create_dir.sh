#!/bin/bash
dirname=$1
#mkdir "$dirname"
if [[ -n $dirname  ]]; then
	mkdir "$dirname"
	if [[ "$?" -eq "0" ]];
	then
		echo "Dir created"
	else
		echo "Not created"
	fi
else
	echo "Usage $0, please provide directory name"

fi
#  $? => output of bash if executed then 0 as true / if not executed or syntax error then not 0
echo $#

