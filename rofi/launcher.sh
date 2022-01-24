#!/usr/bin/env bash

# Available Styles
# >> Created and tested on : rofi 1.6.0-1
#
# style_1     style_2     style_3     style_4     style_5     style_6     style_7	 tanmaycustom
#
# type: app[combi mode, run drun window]	file	dir		sysmenu

dir="$HOME/.config/rofi/"
type=$1
theme="theme.rasi"
font="Cantarell Regular 14"

if [ $type = "app" ]
then
	rofi -no-lazy-grab -show drun -modi run,drun,window -theme $dir/"$theme" -font "$font"
elif [ $type = "file" ]
then
	$HOME/.config/rofi/rofi-edit.sh $theme "$font"
elif [ $type = "dir" ]
then
	$HOME/.config/rofi/rofi-dir.sh $theme "$font"
elif [ $type = "sysmenu" ]
then
	$HOME/.config/rofi/rofi-power_menu.sh $theme "$font"
elif [ $type = "themes" ]
then
	$HOME/.config/rofi/rofi-themes.sh $theme "$font"
elif [ $type = "polybar" ]
then
	$HOME/.config/rofi/rofi-polybar-launcher.sh $theme "$font"
elif [ $type = "monitor" ]
then
	$HOME/.config/rofi/rofi-display_manager.sh $theme "$font"
fi

