#!/usr/local/bin/bash
######################################################################
#
# File: startup.sh
#
# Description: Quick-hack startup script for Linux.
#
######################################################################

echo "INFO: Install custom DNS settings..."
sudo cp /etc/resolv.conf.custom /etc/resolv.conf

echo "INFO: Done."
