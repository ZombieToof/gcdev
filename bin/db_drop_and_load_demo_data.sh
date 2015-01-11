#!/bin/bash

# Drop the database and load an clean phpbb3 database and full
# demo data
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COMMAND='
echo "run migrations for abcapp to create the necessary tables..."
/home/vagrant/gcdjango/bin/python /vagrant/src/gcabc/manage.py migrate abcapp
echo "load abc demo data..."
/home/vagrant/gcdjango/bin/python /vagrant/src/gcabc/manage.py gc_demo_data'

# create a clean phpbb database
$DIR/db_drop_and_load_initial_phpbb3_db.sh
# run abcapp migrations and load the demo data
vagrant ssh -c "$COMMAND"
