#!/bin/bash
echo "Input month"
read month
case $month in
	"jan"|"feb"|"mar"|"apr")
		echo "Print jan to apr";;
	*)
		echo "Not related to 1 to 4 months"
esac
