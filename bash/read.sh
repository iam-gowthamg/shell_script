#!/bin/bash
read -p "Give your name: " name
echo "${name:-john}" #If name not provided then john will "print" in the name please
echo "${name1:? Value not provided please run again and provide the name}"
read -p "Give your name again: " name1
echo "${name1:=john}" #if name not provided then john will assign to the name
echo "${name1:? Value not provided please run again and provide the name}"

