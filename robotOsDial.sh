#!/bin/bash
while true
do
	xdotool mousemove 300 420 click --repeat 2 1;xdotool key ctrl+c
	gnome-terminal
	termnal_pid=$!
	sleep 1	
	xdotool key s h space v e r N u m period s h space ctrl+shift+v Return
	xdotool key e x i t Return
	xdotool search --classname navigator windowactivate --sync
	if [ -s salidaVerNum.txt ];
		then
			xdotool mousemove 120 525 click 1
			sleep 1
			xdotool mousemove 650 200 click 1
			sleep 1
			xdotool mousemove 300 260 click --repeat 2 1
			rm salidaVerNum.txt
		fi
	xdotool search --classname navigator windowactivate --sync
	xdotool mousemove 300 400 click --repeat 2 1
	xdotool key space
	sleep 1
	xdotool mousemove 300 400 click --repeat 2 1
	xdotool key ctrl+c

	sleep 4
done
