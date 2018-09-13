#!/bin/sh
#
# Post install script for first test plugin.
# Written by jaxjexjox (Disk Diddler) @FreeNAS
# (I have manually performed all of these commands in a fresh, manually created jail and ended up with a working version of SabNZBD (sabnzbdplus)
# Hence the attempt to try and learn to make a plugin and get this script to do it for me
#
# pkg install sabnzbdplus
# I'm fairly certain, this is actually not required, as it's a post install script, but I originally had this line in here.
#
#service sabnzbd onestart
#service sabnzbd stop
#
# Start and stop the plugin, Sab  create some folders and files you need to change
#
#sleep 5s
#
#mv /usr/local/sabnzbdprep.ini /usr/local/sabnzbd/sabnzbd.ini
#chown _sabnzbd:_sabnzbd /usr/local/sabnzbd/sabnzbd.ini
#
# This replaces the sabnzbd.ini file with a corrected file and sets permissions
# Corrected version changes the "host" string from 127.0.0.1 to 0.0.0.0
# I am unsure why, but until changed, the WebUI will not work. 
#
#
#
#sysrc sabnzbd_enable=YES
#service sabnzbd start
