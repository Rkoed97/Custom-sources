#!/bin/bash

: 'Copyright Rkoed97

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

	   http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
'

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