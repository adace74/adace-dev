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

echo "INFO: Starting Apache HTTP..."
sudo /usr/local/apache2/bin/apachectl start

echo "INFO: Done."
