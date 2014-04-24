About
=====

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
3. Run `vagrant up`
   This will download a Ubuntu 14.04 vagrant image from ubuntu.com.

Now you have a Ubuntu virtual machine with phpbb running. Port 80 is
forwarded to port 10080 on the host. You can access the plain phpbb
Forum on the host with at `http://localhost:10080`.

The mysql database on the client is initalized with the data from a
newly installed phpbb 3.0.12. If you want to use different data you
can replace the file `files/phpbb_initial_data.sql` with a mysql dump
of your choice *before* you build the box the first time. Later you
have to repopulate the database manually.
You can also replace `files/phpbb_config.php` with a modified version.
This should be picked up when you run `vagrant provision` or 
`vagrant up --provision`.


Usernames/Passwords
===================

* systems user/password: vagrant
* mysql db/user/password: phpbb
* phpbb admin user/password: admin/password
