#!/bin/bash

# reinitialize the database from the host

echo "dropping the database phpbb..."
vagrant ssh -c 'mysql -uphpbb -pphpbb -e "drop database phpbb;"'

echo "creating empty database phpbb..."
vagrant ssh -c 'mysql -uphpbb -pphpbb -e "create database phpbb;"'

echo "importing php_initial_data.sql..."
vagrant ssh -c 'mysql -uphpbb -pphpbb phpbb < /vagrant/files/phpbb_initial_data.sql'

echo "...done."
