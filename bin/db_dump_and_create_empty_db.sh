#!/bin/bash

# Drop the database and create an empty one
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COMMAND='
echo "drop the database phpbb..."
mysql -uphpbb -pphpbb -e "drop database phpbb;"
echo "create empty database phpbb..."
mysql -uphpbb -pphpbb -e "create database phpbb;"'

vagrant ssh -c "$COMMAND"

