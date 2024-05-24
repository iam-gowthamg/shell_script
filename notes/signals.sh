<< comment
kill -l
trap
comment
#!/bin/bash
trap "echo 'I cannot be killed with ctrl+c'" INT
while true
do
	echo "You tried to kill me"
	sleep 20
done
