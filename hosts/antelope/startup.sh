#!/bin/bash
######################################################################
#
# $Id: 31b4516daf5fd8b07a28a0ce184b5f467aaa3d9c $
#
# Description: Quick-hack startup script for Linux.
#
######################################################################

#echo "INFO: Setting ifconfig txqueuelen..."
#sudo ifconfig eth0 txqueuelen 2048

echo "INFO: Starting Squid..."
sudo /usr/local/squid/sbin/squid

echo "INFO: Done."
