#!/bin/bash
while read -r _ _ _ mode _; do
    if [[ "${mode}" == "inverted" ]]; then
   	echo switch to normal mode 	
	xrandr --output LVDS-1 --rotate normal 
	xrandr --rotate normal 
	xinput enable "SynPS/2 Synaptics TouchPad" 
	xsetwacom --set "Wacom ISDv4 E6 Pen stylus" rotate none
	xsetwacom --set "Wacom ISDv4 E6 Finger touch" rotate none
	xsetwacom --set "Wacom ISDv4 E6 Pen eraser" rotate none
	source ~/.xprofile

    else
   	echo switch to tablet mode 	
	xrandr --output LVDS-1 --rotate inverted 
	xinput disable "SynPS/2 Synaptics TouchPad" 
	xsetwacom --set "Wacom ISDv4 E6 Pen stylus" rotate half
	xsetwacom --set "Wacom ISDv4 E6 Finger touch" rotate half
	xsetwacom --set "Wacom ISDv4 E6 Pen eraser" rotate half
	source ~/.xprofile
    fi
done < <(xrandr -q | grep LVDS-1)
