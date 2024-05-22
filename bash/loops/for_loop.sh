#!/bin/bash
mkdir .prac
filename=$(cat filename.txt)
for f in $filename
do
	touch .prac/$f
done
