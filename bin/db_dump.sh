#!/bin/bash

# Drop the database and create an empty one
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COMMAND='mysqldump -uphpbb -pphpbb phpbb'
vagrant ssh -c "$COMMAND"

