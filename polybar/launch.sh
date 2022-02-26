#/usr/bin/env bash
# Add this script to your wm startup file. with Options:
# onlyBottom onlyTop topBottom externalBottom externalTop	externalTopBottom
input=$1
DIR="$HOME/.config/polybar"
# Setting DISPLAY for POLYBAR
$HOME/bin/setPolyBar_Monitor.sh
# Terminate already running bar instances
killall -q polybar
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Launch the bar
polybar -q spaced1 -c "$DIR"/config.ini &
polybar -q spaced2 -c "$DIR"/config.ini &
polybar -q spaced3 -c "$DIR"/config.ini &
