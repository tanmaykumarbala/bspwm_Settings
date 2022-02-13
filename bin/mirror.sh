#!/bin/sh

DIR="$HOME/.config/polybar"
MFILE="$HOME/bin/mirror.sh"
launchFILE="$HOME/.config/polybar/launch.sh"
internal_monitor=eDP-1
external_monitor=HDMI-1
tag="Right"

# Setting DISPLAY for POLYBAR and Mirror.
$HOME/bin/setPolyBar_Monitor.sh

reAlighe_Desktop(){
	bspc monitor $internal_monitor -a Desktop
	for desktop in $(bspc query -D -m $internal_monitor)
	do
		bspc desktop $desktop --to-monitor $external_monitor
	done
	bspc monitor $external_monitor -a Desktop # Temp desktop
	for desktop in $(bspc query -D -m $external_monitor)
	do
		bspc desktop $desktop --to-monitor $internal_monitor
	done
	bspc desktop Desktop --remove # Remove temp desktops
	sed -i -e "s/tag=\".*/tag=\"Mirror\"/g" $MFILE
}

if [[ $(xrandr -q | grep "$external_monitor connected") ]]; then
	if [[ "$tag" = "Left" ]]
	then
		reAlighe_Desktop
	fi
	sed -i 's/size:\ 8/size:\ 12/g' $HOME/.config/alacritty/alacritty.yml
	# xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-1-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-2 --off --output DP-1-3 --off
	xrandr --output $internal_monitor --mode 1920x1080 --pos 0x0 --rotate normal --output $external_monitor --primary --mode 1920x1080 --pos 0x0 --rotate normal
	bspc desktop Desktop --remove
else
	sed -i 's/size:\ 12/size:\ 8/g' $HOME/.config/alacritty/alacritty.yml
	bspc desktop Desktop --remove
fi

# Setting Wallpaper.
feh --bg-fill /home/tanmay/.config/feh/screen1.*
# Launching Polybar
$HOME/.config/polybar/launch.sh
