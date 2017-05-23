#!/bin/bash
######################################################################
#
# $Id: d89ea31746234e07a9aa9aa44ce79b75c1e1c3ab $
#
# Description: Quick-hack startup script for Linux.
#
######################################################################

echo "INFO: Dropping firewall rules..."
sudo iptables -F
sudo ip6tables -F

echo "INFO: Done."
