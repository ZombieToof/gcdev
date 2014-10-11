#!/bin/bash

vagrant ssh -c "/home/vagrant/gcdjango/bin/python /vagrant/src/gcabc/manage.py $*"
