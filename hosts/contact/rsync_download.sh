#!/usr/local/bin/bash
######################################################################
#
# File: startup.sh
#
# Description: Quick-hack startup script for Linux.
#
######################################################################

#
# Variables.
#
RSYNC="rsync"
RSYNC_FLAGS="--archive --delete --verbose"
RSYNC_URL="rsync://mirror.bytemark.co.uk/dragonflybsd"
LOCAL_DIR="/web/mirror.adamdace.info/dragonflybsd"

echo "INFO:"
echo "INFO: Downloading DFly ISO Images..."
echo "INFO:"

cd $LOCAL_DIR/iso-images/
$RSYNC $RSYNC_FLAGS $RSYNC_URL/iso-images/ .

echo "INFO:"
echo "INFO: Downloads complete."
echo "INFO:"
echo "INFO: Done."
