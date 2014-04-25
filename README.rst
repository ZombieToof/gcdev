About
=====

.. DANGER::
   Beware killer rabbits! And don't use this in anything remotly
   related to a production or public deployment!!!

This is a vagrant configuration to build a development VM for the GC site/ABC.
It contains:

  * A LAMP stack
  * PhpBB 3.0.12
  * Django 1.7 (b2)
  * Not much else yet


Installation
============

1. Install VirtualBox
2. Install Vagrant
3. Copy Flummi's GCWeb repository to files/GCWeb
3. Run `vagrant up`

`vagrant up` will basicall do the following things:

* Download a Ubuntu 14.04 vagrant image from ubuntu.com and set up a
  VM with it
* Add port forwarding from the client to the host so you can access
  phpBB/ABC from http://localhost:10080 on the host.
* Provision the VM with the Software above, especially:
  * Add a MySQL database for phpBB/ABC
  * Import the Tables/Data of a new phpBB installation
  * Install phpBB in Apache and configure it
  * Install GCWeb in Apache and configure it


Customizations
==============

The mysql database on the client is initalized with the data from a
newly installed phpbb 3.0.12. If you want to use different data you
can replace the file `files/phpbb_initial_data.sql` with a mysql dump
of your choice *before* you build the box the first time. 

If you want to replace the data later you can connect to the MySql,
drop the database and let vagrant reprovision the machine after you
replaced `files/phpbb_initial_data.sql`:

  host$ cp my_fancy_new_data_dump.sql files/phpbb_initial_data.sql
  host$ vagrant up  # if you haven't already
  host$ vagrant ssh
  
  client$ mysql -u phpbb -p phpbb  # enter 'phpbb' as the password
  > drop database phpbb;
  > exit

  # now let vagrant run the puppet provisioner again
  host$ vagrant provision


Usernames/Passwords
===================

* systems user/password: vagrant
* mysql db/user/password: phpbb
* phpbb admin user/password: admin/password

Note that the passwords are hard coded in the VM,
the Vagrant config (manifests/site.pp / files/*.config.php) 
and the imported data.
