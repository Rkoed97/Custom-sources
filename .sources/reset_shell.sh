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

reset_shell() {
	# Check and retain the active shell name
	ACTIVE_SHELL_NAME=$(echo $0 | awk '{n=split($0,a,"/"); print a[n]}')

	# Searching for common .*rc files, based on common naming convetions
	[ ! -e ~/.${ACTIVE_SHELL_NAME}rc ] && echo "No common source for the active shell" && return 1

	source ~/.${ACTIVE_SHELL_NAME}rc && echo "Shell successfully reset!"
}