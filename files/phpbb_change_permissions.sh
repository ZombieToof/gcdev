#!/bin/bash

ROOTDIR=/var/www/html

cd $ROOTDIR

for files in config.php cache files store images/avatars/upload/; do 
  chmod 777 $files; 
done

