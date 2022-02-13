#!/usr/bin/env bash

font=$2
dir="$HOME/.config/rofi/"
uptime=$(uptime -p | sed -e 's/up //g')
rofi_command="rofi -theme $dir/$1"

$(killall -q xrandr)

# Options
mirror=" Mirror Display"
Rextended=" Extend-Right Display"
Lextended=" Extend-Left Display"
Bextended=" Extend-Bottom Display"
edp1=" Internal Display"
dp11=" External Display"

# Variable passed to rofi
options="$mirror\n$Rextended\n$Lextended\n$Bextended\n$edp1\n$dp11"
chosen="$(echo -e "$options" | $rofi_command -font "$font" -p " Display Manager " -dmenu -selected-row 0)"
case $chosen in
	$mirror)
		$HOME/bin/mirror.sh
		;;
	$Rextended)
		$HOME/bin/docked_Right.sh
		;;
	$Lextended)
		$HOME/bin/docked_Left.sh
		;;
	$edp1)
		$HOME/bin/internal.sh
		;;
	$dp11)
		$HOME/bin/external.sh
		;;
	$Bextended)
		$HOME/bin/docked_Bottom.sh
		;;
esac
