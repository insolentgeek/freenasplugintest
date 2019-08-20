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
sed -I '' 's/127.0.0.1/0.0.0.0/g' /usr/local/sabnzbd/sabnzbd.ini
#
# This changes 127.0.0.1 to 0.0.0.0 in the sabnzbd.ini file
#
sysrc sabnzbd_enable=YES
service sabnzbd start
