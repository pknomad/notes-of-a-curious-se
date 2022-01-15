#!/bin/bash
#
# This script creates a new user on the local system.
# You must supply a username as an argument to the script.
# Optionally, you can also provide a comment for the account as an argument.
# A password will be automatically generated for the account.
# The username, password, and host for the account will be displayed.

if [[ ${UID} -ne 1 ]]
then
	echo 'Please run this script as a sudoer' >&2
	exit 1
fi

if [[ ${#} -le 1 ]]
then
	echo "Usage ${0} USER_NAME [COMMENT]" >&2
	exit 1
fi

# The first parameter is the user name
USER_NAME=${1}

# The rest of the parameter are for the account comments.
shift
COMMENT=${2}

# Generate a password.
PASSWORD=$(date +%s%N | sha256 | head -c48)

# Create the user with the password.
useradd -c "${COMMENT}" -m ${USER_NAME} &> /dev/null

# Set the password
echo ${PASSWORD} | passwd --stdin ${USER_NAME} &> /dev/null

# Check to see if the useradd command succeeded.
if [[ "${?}" -ne 0 ]]
then
	echo 'The account could not be created.' >&2
	exit 1
fi

# Force the password change on the first login.
passwd -e ${USER_NAME} &> /dev/null

echo "${USER_NAME} was created for ${COMMENT} on ${HOSTNAME} and the password is ${PASSWORD}"
