#!/usr/bin/env bash

sudo service apache2 restart

echo "Vagrant boot time: $(date)" >> /vagrant/bootstrap.log

