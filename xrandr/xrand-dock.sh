#!/bin/bash
################################################################################
################################################################################
####                                                                       #####
#### A notice to all nerds.                                                #####
#### If you will copy developers real work it will not make you a hacker.  #####
#### Resepect all developers, we doing this because it's fun!              #####
####                                                                       #####
################################################################################
################################ SOURCE CODE ###################################
################################################################################
####                                                                       #####
####  Copyright (C) 2018-2019, wuseman                                     #####
####                                                                       #####
####  This program is free software; you can redistribute it and/or modify #####
####  it under the terms of the GNU General Public License as published by #####
####  the Free Software Foundation; either version 2 of the License, or    #####
####  (at your option) any later version.                                  #####
####                                                                       #####
####  This program is distributed in the hope that it will be useful,      #####
####  but WITHOUT ANY WARRANTY; without even the implied warranty of       #####
####  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the        #####
####  GNU General Public License for more details.                         #####
####                                                                       #####
####  You must obey the GNU General Public License. If you will modify     #####
####  this file(s), you may extend this exception to your version          #####
####  of the file(s), but you are not obligated to do so.  If you do not   #####
####  wish to do so, delete this exception statement from your version.    #####
####  If you delete this exception statement from all source files in the  #####
####  program, then also delete it here.                                   #####
####                                                                       #####
####  Contact:                                                             #####
####          IRC: Freenode @ wuseman                                      #####
####          Mail: wuseman <wuseman@nr1.nu>                               #####
####                                                                       #####
################################################################################
################################################################################

# ARE WE DOCKED
DOCKED="$(awk '/1/{print $0}' /sys/devices/platform/dock.0/docked)"
if [[ $DOCKED -eq "1" ]]; then

# SCREENS
    LAPTOP="eDP-1"
ACER="DP-2-3"
LENOVO="DP-2-2"
TCL="DP-2-1"

    xrandr --output $TCL --right-of $LENOVO
    xrandr --output $TCL --left-of $ACER
    xrandr --output $LENOVO --left-of $TCL
    xrandr --output $LAPTOP --off
    xrandr --output $ACER --rotate right
else 
    xrandr --output $LAPTOP --auto
fi
