#!/usr/local/bin/bash
######################################################################
#
# File: startup.sh
#
# Description: Quick-hack startup script for Linux.
#
######################################################################

echo "INFO: Starting vnstatd..."
sudo /usr/local/sbin/vnstatd -d

echo "INFO: Done."
