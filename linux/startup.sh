#!/bin/bash
######################################################################
#
# $Id: 8929c42b84dd5a828f57a1c3c9c1bd55238a6c5a $
#
# Description: Quick-hack startup script for Linux.
#
######################################################################

echo "INFO: Activating custom resolv.conf..."
sudo cp /etc/resolv.conf.custom /etc/resolv.conf
echo "INFO: Starting vnstatd..."
sudo /usr/sbin/vnstatd -d			# Start vnstatd
echo "INFO: Starting Apache HTTPd..."
sudo /usr/local/apache2/bin/apachectl start	# Start HTTPd
echo "INFO: Starting Apache Traffic Server..."
sudo /usr/local/bin/trafficserver start		# Start ATS

echo "INFO: Done."