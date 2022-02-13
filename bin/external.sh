#!/bin/sh

DIR="$HOME/.config/polybar"
launchFILE="$HOME/.config/polybar/launch.sh"
internal_monitor=eDP-1
external_monitor=HDMI-1

# Setting DISPLAY for POLYBAR
$HOME/bin/setPolyBar_Monitor.sh

xrandr --output $internal_monitor --mode 1920x1080 --pos 0x0 --rotate normal --output $external_monitor --primary --mode 1920x1080 --pos 0x0 --rotate normal
sleep 1
xrandr --output eDP-1 --off --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output $external_monitor --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-2 --off --output DP-1-3 --off
sleep 1
sed -i 's/size:\ 8/size:\ 12/g' $HOME/.config/alacritty/alacritty.yml

# Setting DISPLAY for POLYBAR
$HOME/bin/setPolyBar_Monitor.sh
$HOME/.config/polybar/launch.sh
