#!/usr/local/bin/bash
######################################################################
#
# File: rsync_download.sh
#
# Description: Simple mirror automation script.
#
######################################################################

#
# Variables.
#
RSYNC="rsync"
RSYNC_FLAGS="--archive --delete --ipv6 --verbose"
#RSYNC_URL="rsync://avalon.dragonflybsd.org"
RSYNC_URL="rsync://mirror.bytemark.co.uk/dragonflybsd"
LOCAL_DIR="/web/mirror.adamdace.info/dragonflybsd"

echo "INFO:"
echo "INFO: Downloading DragonFly ISO Images..."
date
echo "INFO:"

cd $LOCAL_DIR/iso-images/
$RSYNC $RSYNC_FLAGS $RSYNC_URL/iso-images/ .

echo
echo "----------------------------------------------------------------------"
echo

echo "INFO:"
echo "INFO: Downloading DragonFly DEVELOPMENT Packages..."
echo "INFO:"

cd $LOCAL_DIR/dports/dragonfly:5.8:x86:64/
$RSYNC $RSYNC_FLAGS $RSYNC_URL/dports/dragonfly:5.8:x86:64/ .

echo
echo "----------------------------------------------------------------------"
echo

echo "INFO:"
echo "INFO: Downloads complete."
date
echo "INFO:"
echo "INFO: Done."
