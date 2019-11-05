#!/usr/local/bin/bash
######################################################################
#
# $Id$
#
# Description: Quick-hack network stats gathering.
#              Written to monitor a "comes and goes" network issue.
#
######################################################################

while true;
do
    echo -n "INFO:"
    date
    echo "INFO: ----------------------------------------"
    ping6 -c 8 antelope.adamdace.info
    echo "INFO: ----------------------------------------"
    sleep 3600
done
