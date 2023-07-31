#!/bin/bash

set -e
set -u

ACTIVE_SHELL_NAME=`echo $(ps -p $$ | tr '\n' ' ' | tr '\t' ' ') | awk '{n=split($0,a," "); print a[n]}'`

[ ! -e ~/.${ACTIVE_SHELL_NAME}rc ] && echo "No common source file found for the active shell\nAbort!" && return 1

cat ./changes >> ~/.${ACTIVE_SHELL_NAME}rc

mkdir -p ~/.sources

cp .sources/* ~/.sources/

source ~/.${ACTIVE_SHELL_NAME}rc && echo "Custom shell functions successfully installed!"

unset ACTIVE_SHELL_NAME