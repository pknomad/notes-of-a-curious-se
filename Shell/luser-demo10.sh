#!/bin/bash

# Use local for keeping variable local to the function as opposed to global.

log() {
	local MESSAGE="${@}"
	echo "${MESSAGE}"
}

log 'Hello!'
log 'This is fun!'
