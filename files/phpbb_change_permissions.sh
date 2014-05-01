#!/bin/bash
# The files are located in a synced folder now. Changing permissions
# isn't possible from within the VM. Moved this to Vagrantfile

ROOTDIR=/vagrant/projects/GCWeb/forum/

cd $ROOTDIR

for files in config.php cache files store images/avatars/upload/; do 
  chmod 777 $files; 
done

