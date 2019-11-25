#!/usr/local/bin/bash
######################################################################
#
# File: startup.sh
#
# Description: Quick-hack startup script for Linux.
#
######################################################################

echo "INFO: Setting custom kernel param..."
sudo /sbin/sysctl -w kern.maxvnodes=50000

echo "INFO: Done."
