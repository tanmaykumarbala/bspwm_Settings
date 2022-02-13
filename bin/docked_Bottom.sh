#!/bin/sh

#-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
# @Auther Tanmay Bala!.
#-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
#

DIR="$HOME/.config/polybar"
MFILE="$HOME/bin/mirror.sh"
launchFILE="$HOME/.config/polybar/launch.sh"
internal_monitor=eDP-1
external_monitor=HDMI-1

# Setting DISPLAY for POLYBAR
$HOME/bin/setPolyBar_Monitor.sh

xrandr --output $internal_monitor --primary --mode 1920x1080 --pos 0x0 --rotate normal --output $external_monitor --off
sleep 1
xrandr --output $internal_monitor --mode 1920x1080 --pos 0x1080 --rotate normal --output $external_monitor --primary --mode 1920x1080 --pos 0x0 --rotate normal
bspc desktop Desktop --remove

#-- Setting workspaces. --#
monitor_add() {
	desktops=9 # How many desktops to move to the second monitor

	for desktop in $(bspc query -D -m $internal_monitor | sed "$desktops"q)
	do
		bspc desktop $desktop --to-monitor $external_monitor
	done

  # Remove "Desktop" created by bspwm
  bspc desktop Desktop --remove
  sed -i 's/size:\ 8/size:\ 12/g' $HOME/.config/alacritty/alacritty.yml

  # Deleting all Polybar run commands
  sed -i -e "s/polybar -q.*//" $launchFILE
  sed '/^$/d' $launchFILE > $DIR"/launch.sh.tmp"
  mv $DIR"/launch.sh.tmp" $launchFILE
  chmod +x $launchFILE
  echo "polybar -q full_bottom -c \"\$DIR\"/config.ini &" >> $launchFILE
  echo "polybar -q external -c \"\$DIR\"/config.ini &" >> $launchFILE
}

monitor_remove() {
	bspc monitor $internal_monitor -a Desktop # Temp desktop because one desktop required per monitor

	# Move everything to external monitor to reorder desktops
	for desktop in $(bspc query -D -m $internal_monitor)
	do
		bspc desktop $desktop --to-monitor $external_monitor
	done
	bspc desktop Desktop --remove # Remove temp desktops
	sed -i 's/size:\ 12/size:\ 8/g' $HOME/.config/alacritty/alacritty.yml

	# Deleting all Polybar run commands
	sed -i -e "s/polybar -q.*//" $launchFILE
	sed '/^$/d' $launchFILE > $DIR"/launch.sh.tmp"
	mv $DIR"/launch.sh.tmp" $launchFILE
	chmod +x $launchFILE
	echo "polybar -q noLeft -c \"\$DIR\"/config.ini &" >> $launchFILE
}

if [[ $(xrandr -q | grep "$external_monitor connected") ]]; then
	feh --bg-fill /home/tanmay/.config/feh/screen1.* /home/tanmay/.config/feh/screen2.*
	monitor_add
else
	feh --bg-fill /home/tanmay/.config/feh/screen1.*
	monitor_remove
fi

sed -i -e "s/tag=\".*/tag=\"Right\"/g" $MFILE
$HOME/.config/polybar/launch.sh
