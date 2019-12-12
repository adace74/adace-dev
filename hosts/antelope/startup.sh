#!/bin/bash
######################################################################
#
# File: startup.sh
#
# Description: Quick-hack startup script for Linux.
#
######################################################################

echo "INFO: Starting Apache HTTP..."
sudo /usr/local/apache2/bin/apachectl start

echo "INFO: Done."
