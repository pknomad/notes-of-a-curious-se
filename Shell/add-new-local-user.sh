#!/bin/bash

# Enforces running the script as root

if [[ ${UID} -ne 0 ]]
then
	echo 'Please run this script as root/sudo'
	exit 1
fi

if [[ "${#}" -lt 1 ]]
then
	echo "Usage ${0} USER_NAME [USER_NAME]..."
	exit 1
fi

USER_NAME=${1}
COMMENTS=${2}
PASSWORD=$(date +%s%N | sha256sum | head -c8)

useradd -c "${COMMENTS}" -m ${USER_NAME}

echo ${PASSWORD} | passwd --stdin ${USER_NAME}

echo "Username is ${USER_NAME}, password is ${PASSWORD}"

passwd -e "${USER_NAME}"
