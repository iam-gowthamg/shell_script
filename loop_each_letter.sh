#!/bin/Bash
#set -x
x=mississipi
# for i in "$x"; do
for ((i=0; i<${#x}; i++)); do
    char="${x:$i:1}"
    echo "$char"
    # grep -o "$char" <<< "$x" | wc -l

done

