#!/bin/bash

activate_venv() {
	# Check if the parameter is specified
	[ ! $1 ] && echo "No venv specified for activation!" && return 1

	# Check if the folder exists
	[ ! -d "$1" ] && echo "Specified venv does not exist here!" && return 2

	# Check if the folder is a venv
    # Limited check, lazy for more
	[[ ! -d "$1/bin" || ! -d "$1/lib" ]] && echo "Specified folder is not a venv!" && return 3

	# Check if we can activate the venv
	[ ! -e "$1/bin/activate" ] && echo "Missing script files for operation!" && return 4

	source "$1/bin/activate" && echo "Environment successfully activated!" && return 0
}