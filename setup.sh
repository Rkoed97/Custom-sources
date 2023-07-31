#!/bin/bash

set -e
set -u

mkdir -p ~/.sources

cp .sources/* ~/.sources/

echo -e "\nRun:\n\ncat ./changes >> <rc_file>; source <rc_file>\n\nWhere <rc_file> is your current rc file (~/.zshrc, ~/.bashrc, etc)\n\n"