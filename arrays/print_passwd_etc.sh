#!/bin/bash
for i in $(cat /etc/passwd | cut -d : -f 1,3);
do
	array[${i#*:}]=${i%:*}
done
# i#*: indicates getting value from i -> # indicates shortesh value which matches till *: -> will be removed 
: '
IHi
'
echo "Username for $1 is ${array[$1]}"
