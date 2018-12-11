#!/bin/bash
######################################################################
#
# File: startup.sh
#
# Description: Quick-hack startup script for Linux.
#
######################################################################

echo "INFO: Install custom DNS settings..."
sudo cp /etc/resolv.conf.custom /etc/resolv.conf

echo "INFO: Starting MySQL..."
sudo /etc/init.d/mysql.server start

sleep 1

echo "INFO: Starting Apache HTTP..."
sudo /usr/local/apache2/bin/apachectl start

echo "INFO: Done."
