#!/bin/bash

create_venv() {
	# Check if the parameter is specified
	[ ! $1 ] && echo "No venv specified for creation!" && return 1

	virtualenv "$1" && echo "Environment successfully created!" && return 0
}