#!/bin/sh


# Post install script for first test plugin.
# Written by jaxjexjox (Disk Diddler) @FreeNAS
#
#
pkg install sabnzbdplus
# May not be needed, as it's a post install script
#
service sabnzbd onestart
service sabnzbd stop
#
# Start and stop the plugin, will create some folders and files
#
sleep 5s
#
mv /usr/local/sabnzbdprep.ini /usr/local/sabnzbd/sabnzbd.ini
chown _sabnzbd:_sabnzbd /usr/local/sabnzbd/sabnzbd.ini
#
# Replace the sabnzbd.ini file with a corrected file and set permissions
# Corrected version goes from 127.0.0.1 to 0.0.0.0 for the host line.
# For some reason SabNZBD won't start without it 
#
#
service sabnzbd onestart