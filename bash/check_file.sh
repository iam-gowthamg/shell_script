#!/bin/bash 
#shebang / hashbang
if [[ -e "/etc/passwd" ]]; then
echo "passwd file exist"
else
echo "file not found"
fi

: <<'comment'
-a: Logical AND. This is used for combining expressions within a conditional statement.
-o: Logical OR. This is used for combining expressions within a conditional statement.
 !: Logical NOT. This negates the result of a condition.
-s: Checks if a file exists and has a size greater than zero.
-t: Checks if a file descriptor is associated with a terminal.
-z: Checks if a string is empty.
-n: Checks if a string is not empty.
-v: Checks if a variable is set and not null.
-z: Checks if a string is zero-length (same as -n).
-h: Checks if a file is a symbolic link.
-L: Checks if a file is a symbolic link (same as -h).
-p: Checks if a file is a named pipe (FIFO).
-S: Checks if a file is a socket.
-r: Checks if a file is readable.
-w: Checks if a file is writable.
-x: Checks if a file is executable.
-e: Checks if a file exists.
-f: Checks if a file exists and is a regular file (not a directory or device).
-d: Checks if a directory exists.
-b: Checks if a file exists and is a block special file.
-c: Checks if a file exists and is a character special file.
-u: Checks if a file has setuid permission.
-g: Checks if a file has setgid permission.
-k: Checks if a file has the sticky bit set.
-t: Checks if a file descriptor (e.g., stdin, stdout) is open and associated with a terminal.
comment
