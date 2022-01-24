#!/bin/sh

DIR="$HOME/.config/polybar"
launchFILE="$HOME/.config/polybar/launch.sh"
external_monitor="DP-1-1"

if [[ $(xrandr -q | grep "$external_monitor connected") ]]; then
	sed -i 's/size:\ 8/size:\ 12/g' $HOME/.config/alacritty/alacritty.yml
	xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-1-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-2 --off --output DP-1-3 --off
	bspc desktop Desktop --remove
else
	sed -i 's/size:\ 12/size:\ 8/g' $HOME/.config/alacritty/alacritty.yml
	bspc desktop Desktop --remove
fi

# Deleting the Polybar and creating again.
#
sed -i -e "s/polybar -q.*//" $launchFILE
sed '/^$/d' $launchFILE > $DIR"/launch.sh.tmp"
mv $DIR"/launch.sh.tmp" $launchFILE
chmod +x $launchFILE
echo "polybar -q noLeft -c \"\$DIR\"/config.ini &" >> $launchFILE
feh --bg-fill /home/tanmay/.config/feh/screen1.*
$HOME/.config/polybar/launch.sh
