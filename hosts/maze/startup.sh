#!/bin/bash
######################################################################
#
# $Id$
#
# Description: Quick-hack startup script for Mac OS X.
#
######################################################################

echo "INFO: Adjusting sysctls..."
sudo sysctl -w net.local.stream.recvspace=65536
sudo sysctl -w net.local.stream.sendspace=65536
sudo sysctl -w net.inet.tcp.autorcvbufmax=3145728
sudo sysctl -w net.inet.tcp.autosndbufmax=3145728
sudo sysctl -w net.inet.tcp.recvspace=65536
sudo sysctl -w net.inet.tcp.sendspace=65536
sudo sysctl -w net.inet.tcp.use_newreno=1
sudo sysctl -w net.inet6.ip6.prefer_tempaddr=0

sleep 1

echo "INFO: Starting vnstatd..."
sudo /usr/local/sbin/vnstatd -n >/tmp/vnstat.out 2>&1 &

echo "INFO: Done."
