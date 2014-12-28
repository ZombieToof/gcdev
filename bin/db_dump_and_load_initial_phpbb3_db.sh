#!/bin/bash

# Drop the database and load a clean phpbb3 database
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COMMAND='
echo "import php_initial_data.sql..."
mysql -uphpbb -pphpbb phpbb < /vagrant/files/phpbb_initial_data.sql'

# drop and create an empty database
echo $DIR/db_dump_and_create_empty_db.sh

# import the data
vagrant ssh -c "$COMMAND"
