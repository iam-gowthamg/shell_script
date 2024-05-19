#!/bin/bash

echo "This script perfoms file operations [read, createm delete]"

usage() {
    echo "$0 [absolute path to the file and operation [r,c,d] as input"
    echo '[r,c,d] as input $0'
}

read -p "Input abs path of the file" path
read -p "input operation type" ops

readfile(){ 
	cat $path
}
createfile(){
	touch $path
}
deletefile(){
	rm -rf $path
}

case $ops in
	c)
		createfile
		;;
	r)
		readfile
		;;
	d)
		deletefile
		;;
	*)
		usage
		;;
esac
