#!/usr/bin/env bash

font=$2
dir="$HOME/.config/rofi/"
uptime=$(uptime -p | sed -e 's/up //g')
rofi_command="rofi -theme $dir/$1"

# Options
mirror=" Mirror"
extended=" Extended"
edp1=" Laptop"
dp11=" External"

# Variable passed to rofi
options="$mirror\n$extended\n$edp1\n$dp11"
chosen="$(echo -e "$options" | $rofi_command -font "$font" -p " Display Manager " -dmenu -selected-row 0)"
case $chosen in
	$mirror)
		$HOME/bin/mirror.sh
		;;
	$extended)
		$HOME/bin/docked.sh
		;;
	$edp1)
		$HOME/bin/onlyeDP-1.sh
		;;
	$dp11)
		$HOME/bin/DP11.sh
		;;
esac
