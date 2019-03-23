#!/bin/bash
echo mode = $MODE
if [ "$MODE" == "tablet" ]
then
	#switch to normal mode
	echo switch to normal mode
	xrandr --output LVDS-1 --rotate normal 
	xinput enable "SynPS/2 Synaptics TouchPad" 
	export MODE=normal
elif [ "$MODE" == "normal" ]
then
	#switch to tablet mode
	echo switch to tablet mode
	xrandr --output LVDS-1 --rotate inverted 
	xinput disable "SynPS/2 Synaptics TouchPad" 
	export MODE=tablet
fi
