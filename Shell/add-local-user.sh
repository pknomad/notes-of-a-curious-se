#!/bin/bash

# Test for root/sudo user
UID_TEST="0"
if [[ "${UID}" != "${UID_TEST}" ]]
then
	echo "UID is not 0"
	exit 1
else 
	read -p 'Enter the new account username: ' USER_NAME
	read -p 'Enter the new account real name: ' REAL_NAME
	read -p 'Enter the new account password: ' PASSWORD

	useradd -c "${COMMENT}" -m ${USER_NAME}

	echo "${PASSWORD}" | passwd --stdin ${USERNAME}
	passwd -e ${USER_NAME}

	echo "Username is ${USER_NAME} and the password is ${PASSWORD} and account directory is ${COMMENT}"
fi
