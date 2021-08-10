#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the root user or now.

# Display the UID
# UID is one of many preset variables.
echo "Your UID is ${UID}"

# Display the username
USER_NAME=$(id -un)

# Older-style syntax
# USER_NAME=`id -un`

echo "Your username is ${USER_NAME}"

# Display if the user is the root user or not. (Becomes root if you execute as root or use "sudo"
# [ ] is an older-type syntax of [[ ]]
if [[ "${UID}" -eq 0 ]]
then
	echo 'You are root.'
else
	echo 'You are not root.'
fi
