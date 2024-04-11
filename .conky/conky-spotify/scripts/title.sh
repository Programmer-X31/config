#!/bin/bash

# title=`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata'|grep -E -A 1 "title"|grep -E -v "title"|cut -b 44-|cut -d '"' -f 1|grep -E -v ^$`

title=`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata'|grep -E -A 1 "title"|grep -E -v "title"|grep -E "^\s*variant"|cut -b 44-|grep -E -v ^$|sed 's/"$//'`

echo $title
