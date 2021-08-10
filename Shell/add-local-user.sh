#!/bin/bash

# Test for root/sudo user
if [[ "${UID}" -ne 0 ]]
then
	echo 'Please run with sudo or as root.'
	exit 1
fi

# Get the username (login).
read -p 'Enter the new account username: ' USER_NAME
	
# Get the real name.
read -p 'Enter the new account real name: ' COMMENT

# Get the user password.
read -p 'Enter the new account password: ' PASSWORD

# Create the user.
useradd -c "${COMMENT}" -m ${USER_NAME}

# Output Error if UID is not 0
if [[ "${?}" -ne 0 ]]
then
	echo 'The account could not be created.'
	exit 1
fi

# Create the password
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

if [[ "${?}" -ne 0 ]]
then
        echo 'The password for the account could not be created.'
        exit 1
fi

# Enforce the password reset
passwd -e "${USER_NAME}"

# Confirm output
echo "Username is ${USER_NAME} and the password is ${PASSWORD} and hostname is ${HOSTNAME}"
