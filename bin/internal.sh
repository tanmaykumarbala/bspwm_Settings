#!/bin/sh

DIR="$HOME/.config/polybar"
launchFILE="$HOME/.config/polybar/launch.sh"

# Setting DISPLAY for POLYBAR
$HOME/bin/setPolyBar_Monitor.sh

xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-1-1 --off --output DP-1-2 --off --output DP-1-3 --off
sleep 1
sed -i 's/size:\ 12/size:\ 8/g' $HOME/.config/alacritty/alacritty.yml

# Deleting the Polybar and creating again.
#
feh --bg-fill /home/tanmay/.config/feh/screen1.*
$HOME/.config/polybar/launch.sh
