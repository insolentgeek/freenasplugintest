#!/bin/sh
#
# Post install script for installing SabNZBDPlus plugin
# Written by jaxjexjox (Disk Diddler) @FreeNAS 
# This has been tested working 14/Sept/2018
# Please note, very much an amateur plugin writer
#
service sabnzbd onestart
sleep 5
service sabnzbd onestop
sleep 5
#
# Start and stop the plugin, Sab will create some folders and files which need some reconfiguring.
#
#
mv /usr/local/sabnzbdprep.ini /usr/local/sabnzbd/sabnzbd.ini
chown _sabnzbd:_sabnzbd /usr/local/sabnzbd/sabnzbd.ini
#
# This replaces the sabnzbd.ini file with a corrected file and sets permissions
# Corrected version changes the "host" string from 127.0.0.1 to 0.0.0.0
# I am unsure why, but until changed, the WebUI will not work
#
#
#
sysrc sabnzbd_enable=YES
service sabnzbd start
