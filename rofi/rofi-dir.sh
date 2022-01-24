#!/bin/sh

myTerm="alacritty"
filemanager="ranger"
editor="nvim"
theme="$1"
font="$2"
dir="$HOME/.config/rofi/"

# Options
f1=" Filr"
f2=" Filr_Local_Copy"
f3=" Alacritty"
f4=" Vim"
f5=" Polybar"
f6=" Rofi"
f7=" Downloads"
f8=" Documents"
f9=" Pictures"
f10=" Home_Bin"
f11=" Sxhkd"

options="$f1\n$f2\n$f3\n$f4\n$f5\n$f6\n$f7\n$f8\n$f9\n$f10\n$f11"
chosen="$(echo -e "$options" | rofi -p " " -dmenu -theme "$dir/$theme" -font "$font" | cut -d. -f1)"
case $chosen in
	$f1)
		export EDITOR=$editor; $myTerm -e $filemanager "$HOME/Documents/Filr_Fresh_Copy/filr-qa/trunk"
		;;
	$f2)
		export EDITOR=$editor; $myTerm -e $filemanager "$HOME/Documents/filr_local_copy/trunk/"
		;;
	$f3)
		export EDITOR=$editor; $myTerm -e $filemanager "$HOME/.config/alacritty/"
		;;
	$f4)
		export EDITOR=$editor; $myTerm -e $filemanager "$HOME/.config/nvim/"
		;;
	$f5)
		export EDITOR=$editor; $myTerm -e $filemanager "$HOME/.config/polybar"
		;;
	$f6)
		export EDITOR=$editor; $myTerm -e $filemanager "$HOME/.config/rofi"
		;;
	$f7)
		export EDITOR=$editor; $myTerm -e $filemanager "$HOME/Downloads"
		;;
	$f8)
		export EDITOR=$editor; $myTerm -e $filemanager "$HOME/Documents"
		;;
	$f9)
		export EDITOR=$editor; $myTerm -e $filemanager "$HOME/Pictures"
		;;
	$f10)
		export EDITOR=$editor; $myTerm -e $filemanager "$HOME/bin/"
		;;
	$f11)
		export EDITOR=$editor; $myTerm -e $filemanager "$HOME/.config/sxhkd/"
		;;
esac

