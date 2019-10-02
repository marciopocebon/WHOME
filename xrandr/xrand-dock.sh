#!/bin/bash
# Author: wuseman <wuseman@nr1.nu>

LAPTOP="eDP-1"
TCL="DP-2-1"
ACER="DP-2-2"
DELL="DP-2-3"

# If Docked
DOCKED="$(awk '/1/{print $0}' /sys/devices/platform/dock.0/docked)"
if [[ $DOCKED = 0 ]]; then 
     xrandr --output $LAPTOP --off
     xrandr --output $TCL --left-of $ACER
     xrandr --output $ACER --right-of $TCL
     xrandr --output $TCL --right-of $LENOVO
     xrandr --output $LENOVO --left-of $TCL
     xrandr --output $TCL --mode 1680x1050
     exit 0
else
    xrandr --outut $LAPTOP --auto
fi
