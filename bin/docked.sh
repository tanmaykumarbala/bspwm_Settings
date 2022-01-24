#!/bin/sh


#-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
# @Auther Tanmay Bala!.
#-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
#

xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-1-1 --off --output DP-1-2 --off --output DP-1-3 --off
sleep 1
xrandr --output eDP-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-1-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-2 --off --output DP-1-3 --off
bspc desktop Desktop --remove

#-- Setting workspaces. --#

DIR="$HOME/.config/polybar"
launchFILE="$HOME/.config/polybar/launch.sh"
internal_monitor=eDP-1
external_monitor=DP-1-1
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

$HOME/.config/polybar/launch.sh
