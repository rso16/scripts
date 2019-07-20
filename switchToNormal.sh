#!/bin/bash
echo switch to normal mode 	
xrandr --output LVDS-1 --rotate normal 
xrandr --rotate normal 
xinput enable "SynPS/2 Synaptics TouchPad" 
xsetwacom --set "Wacom ISDv4 E6 Pen stylus" rotate none
xsetwacom --set "Wacom ISDv4 E6 Finger touch" rotate none
xsetwacom --set "Wacom ISDv4 E6 Pen eraser" rotate none
source ~/.xprofile
