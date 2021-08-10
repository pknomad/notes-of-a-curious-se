#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is vagrant user or not.

# Display the UID.
echo "UID is ${UID}"

# Only display if the UID does NOT match 1000.
UID_TEST="1000"
if [[ "${UID}" -ne "${UID_TEST}" ]]
then
	exit 1
else
	echo "$UID"
fi
	
# Display the username.
USER_NAME="$(id -un)"

# Test if the command succeeded.
# ${?} evaluates the exit status of the last command.
if [[ "${?}" -ne 0 ]]
then
	echo "The ID command did not execute successfully"
	exit 1
else
	echo "Your username is ${USER_NAME}"
fi

# You can use a string test conditional.
# == is for pattern matching
# = is for exact match
USER_NAME_TEST="vagrant"
if [[ "${USER_NAME}" = "${USER_NAME_TEST}" ]]
then
	echo "Your username matches ${USER_NAME_TEST}"
fi

# Test for != (not equal for the string.
if [[ "${USER_NAME}" != "${USER_NAME_TEST}" ]]
then
	echo "Your username does not match ${USER_NAME_TEST}"
	exit 1
fi
exit 0
