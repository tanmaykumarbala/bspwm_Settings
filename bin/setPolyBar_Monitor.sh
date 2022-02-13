#!/bin/sh

# POLYCONFIGFILE="$HOME/bin/display.sh"
POLYCONFIGFILE="$HOME/.config/polybar/config.ini"
MIRRORCONFIG="$HOME/bin/mirror.sh"
RDOCKCONFIG="$HOME/bin/docked_Right.sh"
LDOCKCONFIG="$HOME/bin/docked_Left.sh"
PDISPLAY=$(xrandr -q | grep -w connected | grep -iw primary | awk '{print $1}')
ALLDISPLAY=$(xrandr -q | grep -w connected | awk '{print $1}')
EDISPLAY=""

#--- Set Polybar for Externel Display ---#
externalDP(){
	count=0
	for i in $ALLDISPLAY
	do
		if [[ "$i" != "$PDISPLAY" &&  $count -eq 0 ]]
		then
			EDISPLAY=$i
			count=$((count + 1))
		fi

	done
	sed -i -e "30s/monitor =.*/monitor = $PDISPLAY/g" $POLYCONFIGFILE
	sed -i -e "163s/monitor =.*/monitor = $EDISPLAY/g" $POLYCONFIGFILE
}

#--- Set mirror Display ---#
mirrorDP(){

	count=0
	for i in $ALLDISPLAY
	do
		if [[ "$i" != "eDP-1" &&  $count -eq 0 ]]
		then
			EDISPLAY=$i
			count=$((count + 1))
		fi

	done
	echo $EDISPLAY
	sed -i -e "s/external_monitor=.*/external_monitor=$EDISPLAY/g" $MIRRORCONFIG
	sed -i -e "s/external_monitor=.*/external_monitor=$EDISPLAY/g" $LDOCKCONFIG
	sed -i -e "s/external_monitor=.*/external_monitor=$EDISPLAY/g" $RDOCKCONFIG
}

externalDP
mirrorDP
