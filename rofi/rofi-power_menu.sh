#!/usr/bin/env bash

font=$2
dir="$HOME/.config/rofi/"
uptime=$(uptime -p | sed -e 's/up //g')
rofi_command="rofi -theme $dir/$1"

# Options
shutdown=" Shutdown"
reboot=" Restart"
lock=" Lock"
logout=" Logout"
suspend=" Sleep"

# Variable passed to rofi
options="$lock\n$logout\n$suspend\n$reboot\n$shutdown"
chosen="$(echo -e "$options" | $rofi_command -font "$font" -p "Uptime: $uptime" -dmenu -selected-row 0)"
case $chosen in
    $shutdown)
			systemctl poweroff
        ;;
    $reboot)
			systemctl reboot
        ;;
    $lock)
			i3lock-fancy-multimonitor --blur=0x8
        ;;
    $logout)
				bspc quit
        ;;
	$suspend)
			mpc -q pause
			amixer set master mute
			systemctl suspend
		;;
esac
