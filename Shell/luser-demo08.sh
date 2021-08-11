#!/bin/bash

# This script demonstrates I/O redirection.

# Redirect STDOUT to a file.

FILE="/tmp/data"
head -n1 /etc/passwd > ${FILE}

# Redirect STDIN to a program.
read LINE < ${FILE}
echo "Line contains: ${LINE}"

# sudo passwd --stdin jkang < password

# Redirect STDOUT to a file, overwriting the file.
head -n3 /etc/passwd > ${FILE}
echo
echo "Contents of ${FILE}:"
cat ${FILE}

# Redirect STDOUT to a file, appending to the file.
echo "${RANDOM} ${RANDOM}" >> ${FILE}
echo "${RANDOM} ${RANDOM}" >> ${FILE}
echo
echo "Contents of ${FILE}:"
cat "${FILE}"

# 0, 1, 2 are File Descriptors in shell scripting
# FD0 - Standard Input (STDIN)
# FD1 - Standout Output (STDOUT)
# FD2 - Standard Error (STDERR)

# read X < /etc/centos-release
# read X 0< /etc/centos-release
# echo "${X}

# echo "${UID}" 1> uid
# echo "${uid}"

# You can direct different standard output to different files using file descriptors redirection
# head -n1 /etc/passwd /etc/hosts /fake > head.out 2>head.err

# You can direct all standard output into a single using file descriptors redirection (older syntax)
# head -n1 /etc/passwd /etc/hosts /fake > head.both 2>&1

# You can direct all standard output into a single using file descriptors redirection (newer syntax)
# head -n1 /etc/passwd /etc/hosts /fake &> head.both

# pipe (|) uses STDOUT1 so errors do not get passed through.
# head -n1 /etc/passwd /etc/hosts /fake | cat -n

# You can pass STDOUT2 by using &
# head -n1 /etc/passwd /etc/hosts /fake 2>&1 | cat -n
# head -n1 /etc/passwd /etc/hosts /fake |& cat -n

# Redirect STDIN to a program, using FD 0.
read LINE 0< ${FILE}
echo
echo "LINE contains: ${LINE}"

# Redirect STDOUT to a file using FD 1, overwriting the file.
head -n3 /etc/passwd 1> ${FILE}
echo
echo "Contents of ${FILE}:"
cat ${FILE}

# Redirect STDERR to a file using FD 2.
ERR_FILE="/tmp/data.err"
head -n3 /etc/passwd /fakefile 2> ${ERR_FILE}

# Redirect STDOUT and STERR to a file.
head -n3 /etc/passwd /fakefile &> ${FILE}
echo
echo "Contents of ${FILE}"
cat ${FILE}

# Redirect STDOUT and STDERR through a pipe.
echo
head -n3 /etc/passwd /fakefile |& cat -n

# Send output to STDERR
echo "This is STDERR!" >&2

# Discard STDOUT
echo
echo "Discarding STDOUT: "
head -n3 /etc/passwd /fakefile > /dev/null

# Discard STDERR
echo
echo "Discarding STDERR: "
head -n3 /etc/passwd /fakefile 2> /dev/null

# Discard STDOUT and STDERR
echo
echo "Discarding STDOUT and STDERR:"
head -n3 /etc/passwd /fakefile &> /dev/null

# Clean up
rm ${FILE} ${ERR_FILE} &> /dev/null
