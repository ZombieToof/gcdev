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


Requirements
============

1. Have VirtualBox installed
2. Have Vagrant installed
3. Have access to KoffeinFlummi's GCWeb repository on github so it can 
   be checked out as a submodule. If you don't checkout this config you
   can move a copy of the GCWeb repository to ./projects/GCWeb.


Installation
============

Checkout this repository, change to the repository root and run::

  vagrant up

`vagrant up` will basicall do the following things:

* Download a Ubuntu 14.04 vagrant image from ubuntu.com and set up a
  VM with it
* Add port forwarding from the client to the host so you can access
  phpBB/ABC from http://localhost:10080 on the host.
* Provision the VM with the Software above, especially:
  * Add a MySQL database for phpBB/ABC
  * Import the Tables/Data of a new phpBB installation
  * Configure Apache to serve ./projects/GCWeb


Customizations
==============

The mysql database on the client is initalized with the data from a
newly installed phpbb 3.0.12. If you want to use different data you
can replace the file `files/phpbb_initial_data.sql` with a mysql dump
of your choice *before* you build the box the first time. 

If you want to replace the data later you can replace the file 
`phpbb_initial_data.sql` and run `./scripts/phpbb_reinitialize_database.sh`.


Usernames/Passwords
===================

* systems user/password: vagrant
  (default of the VM image)
* mysql db/user/password: phpbb 
  (configure in `manifests/site.pp` and used in `files/*config.php)
* phpbb admin user/password: admin/password
  (part of ` phpbb_initial_data.sql`)


Available Web services / local paths
====================================

* Customized phpBB (with GCWeb)
  http://localhost:80 (guest), forwarded to
  http://localhost:10080 (host)
  guest path: /var/www/html
  served by apache, started: automatically
  configured by vagrant/puppet

  guest path: /vagrant/projects/GCWeb
  host path: ./projects/GCWeb

* gcabc (Prototype to implement ABC in django)
  http://localhost:8000 (guest), forwarded to
  http://localhost:8000 (host)
  http://localhost:8000/admin (django admin on both)

  guest path:
    * python environment: /home/vagrant/gcdjango
    * django application: /vagrant/projects/gcabc

  Needs to be started manually with::

    ./scripts/django_runserver.sh

  You can get a django shell with::
    ./scripts/django_shell.sh

  Needs to be configured manually before usable.
