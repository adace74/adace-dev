#!/usr/local/bin/bash
######################################################################
#
# $Id: 549df81addd58e559fffa17b1bf0b2adf7571c81 $
#
# Description: Quick-hack startup script for Linux.
#
######################################################################

echo "INFO: Starting Minecraft v1.8 server..."
# Launch java.
# Default is 768M.
java -Xmx448M -Xms448M -jar minecraft_server.jar nogui < /dev/null >> minecraft.out 2>&1 &
# Write PID file.
sleep 1
ps ax | grep java | awk '{ print $1 }' | head -1 > minecraft.pid
echo "INFO: Done."
